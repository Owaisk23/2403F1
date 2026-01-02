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
      body: Padding(
        // padding: const EdgeInsets.all(28.0),
        // padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        padding: const EdgeInsets.only(top: 25.0, bottom: 15.0, left: 30.0, right: 10.0),
        child: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
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
              SizedBox(height: 10),
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
      ),























  // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx





      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Center(
      //     child: Column(
      //       // mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         Text(
      //           "Welcome to First Screen",
      //           style: TextStyle(
      //             fontSize: 24,
      //             fontWeight: FontWeight.w500,
      //             fontFamily: 'Verdana',
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //           child: Icon(Icons.home, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //           child: Icon(Icons.phone, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.yellow,
      //           child: Icon(Icons.message, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.brown,
      //           child: Icon(Icons.book, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.green,
      //           child: Icon(
      //             Icons.notification_add,
      //             color: Colors.white,
      //             size: 50,
      //           ),
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //           child: Icon(Icons.home, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //           child: Icon(Icons.phone, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.yellow,
      //           child: Icon(Icons.message, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.brown,
      //           child: Icon(Icons.book, color: Colors.white, size: 50),
      //         ),
      //         SizedBox(height: 10),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.green,
      //           child: Icon(
      //             Icons.notification_add,
      //             color: Colors.white,
      //             size: 50,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
