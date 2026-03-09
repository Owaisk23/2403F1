import 'package:firebase_crud/screens/products.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      // Navigator.pushReplacementNamed(context, '/signupgoogle');
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Products()));
      // Navigator.pushNamed(context, '/products');
      Navigator.pushReplacementNamed(context, '/signup');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Icon(Icons.flutter_dash, size: 100, color: Colors.white,),
         SizedBox(height: 20,),
          Text("My App", style: TextStyle(fontSize: 24, color: Colors.white),)
        ],
      ),)
    );
  }
}