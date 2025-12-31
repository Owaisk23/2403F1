import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Screen Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arial',
          ),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Welcome to First Screen",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'Verdana',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.home, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Icon(Icons.phone, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Icon(Icons.message, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.brown,
              child: Icon(Icons.book, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Icon(
                Icons.notification_add,
                color: Colors.white,
                size: 50,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.home, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Icon(Icons.phone, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Icon(Icons.message, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.brown,
              child: Icon(Icons.book, color: Colors.white, size: 50),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Icon(
                Icons.notification_add,
                color: Colors.white,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
