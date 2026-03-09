import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/firebase_options.dart';
import 'package:firebase_crud/screens/Login.dart';
import 'package:firebase_crud/screens/MyCarousel.dart';
import 'package:firebase_crud/screens/addproduct.dart';
import 'package:firebase_crud/screens/products.dart';
import 'package:firebase_crud/screens/productss.dart';
import 'package:firebase_crud/screens/signup.dart';
import 'package:firebase_crud/screens/signupgoogle.dart';
import 'package:firebase_crud/screens/splashScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
  bool isAdmin = prefs.getBool("isAdmin") ?? false;
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(isAdmin: isAdmin, isLoggedIn: isLoggedIn), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isAdmin;
  final bool isLoggedIn;

  MyApp({required this.isAdmin, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: MyCarousel(),
      routes: {
        '/signup': (context)=> Signup(),
        '/login': (context)=> Login(),
        '/add': (context)=>  Addproduct(),
                              //(condition)         ? true case   : false case      
        // '/products': (context)=> Products(),
        '/products': (context)=> Products(),
        '/signupgoogle': (context)=> Signupgoogle()
      },
    );
  }
}
