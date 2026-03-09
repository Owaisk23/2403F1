import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  var users = FirebaseFirestore.instance.collection('users');

  void LoiginUser() async{
    if(_loginKey.currentState!.validate()){
      try{
        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passController.text
        );
        print("User Logged In Successfully");
        String uid = credential.user!.uid;
        var userData = await users.doc(uid).get();
        var userDetails = userData.data();
        print(userDetails);

        // Setting user details in shared preferences
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLoggedIn", true);
        prefs.setString("role", userDetails!['role']);
        prefs.setString("userName", userDetails['userName']);
        prefs.setString("email", userDetails['email']);
        prefs.setString("id", uid);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Signed In As ${emailController.text}"),
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 129, 20, 192),
          ),
        );

        if(userDetails!['role'] == 'admin'){
          prefs.setBool("isAdmin", true);
          Navigator.pushNamed(context, "/add");
        }else{
          prefs.setBool("isAdmin", false);
          Navigator.pushNamed(context, "/products");
        }


      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("No user found for that email."),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.red,
            ),
          );
        } else if (e.code == 'invalid-credential') {
          print('Wrong password provided for that user.');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Wrong password provided for that user."),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.red,
            ),
          );
        }else{
          print("Please insert valid details");
        }
      }
      catch(e){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString()),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
          ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text("LogIn Form", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
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
              key: _loginKey,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("SignIn to your Account!", style: TextStyle(color: Colors.deepPurple, fontSize: 32, fontWeight: FontWeight.w300),),
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
                  ElevatedButton(onPressed: LoiginUser, child: Text("Sign In")),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/");
                    }, 
                    child: Text("Not a user? Register Now")
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