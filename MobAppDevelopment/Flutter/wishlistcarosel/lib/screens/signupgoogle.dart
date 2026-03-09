import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signupgoogle extends StatefulWidget {
  const Signupgoogle({ Key? key }) : super(key: key);

  @override
  _SignupgoogleState createState() => _SignupgoogleState();
}

class _SignupgoogleState extends State<Signupgoogle> {
  @override
  Widget build(BuildContext context) {
    Future<UserCredential> signInWithGoogle() async {
  // Create a new provider
  GoogleAuthProvider googleProvider = GoogleAuthProvider();

  googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
  googleProvider.setCustomParameters({
    'login_hint': 'user@example.com'
  });

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithPopup(googleProvider);

  // Or use signInWithRedirect
  // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
}
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup with Google"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              signInWithGoogle().then((UserCredential user) {
                print(user);
              }).catchError((e) {
                print(e);
              });
            },
            child: Text("Sign Up with Google"),
          ),
        ],
      ),
    );
  }
}