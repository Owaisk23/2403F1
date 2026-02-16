import 'package:crud/Screens/addproduct.dart';
import 'package:crud/Screens/products.dart';
import 'package:crud/Screens/splashScreen.dart';
import 'package:crud/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {

  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
   runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "/products":(context)=>Products(),
        "/add":(context)=>Addproduct(),
      },
    ),
  );
}