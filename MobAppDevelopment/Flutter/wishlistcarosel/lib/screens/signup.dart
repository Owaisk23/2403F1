import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _signupKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var users = FirebaseFirestore.instance.collection('users');

  void RegisterUser() async{
    if(_signupKey.currentState!.validate()){
     try{
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text
      );
      print("User Registered Successfully");
      print(credential.user!.uid);

      // adding user details in user collection too
      users.doc(credential.user!.uid).set({
        'userName': userNameController.text,
        'email': emailController.text,
        'password': passController.text,
        'role': 'user',
      }).then((value)=>{
        userNameController.clear(),
        emailController.clear(),
        passController.clear(),
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User Registered Successfully"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
          ),
        ),
        Navigator.pushNamed(context, "/login"),
      },
      ).catchError((error)=>{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to add user details: $error"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
          ),
        )
      });
     } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("The password provided is too weak."),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("The account already exists for that email."),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString()),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        ),
      );
    }
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Form", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(3,3)
              )
            ]
          ),
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: _signupKey,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("Create New Account", style: TextStyle(color: Colors.deepPurple, fontSize: 32, fontWeight: FontWeight.w300),),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please Enter User Name";
                      }
                      return null;
                    },
                    controller: userNameController,
                    decoration: InputDecoration(
                      labelText: "User Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                      hintText: "Enter User Name"
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please Enter Email";
                      }
                      if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value)){
                        return "Email format is invalid";
                      }
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter Email"
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please Enter Password";
                      }
                      if(!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$').hasMatch(value)){
                        return "Password must have an uppercase, number and special character and have atleast 8 characters";
                      }
                      return null;
                    },
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Enter Password"
                    ),
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(onPressed: RegisterUser, child: Text("Sign Up")),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/login");
                    }, 
                    child: Text("Already have an account? Login")
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}