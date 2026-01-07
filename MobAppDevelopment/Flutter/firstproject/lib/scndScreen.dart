import 'package:flutter/material.dart';

class ScndScreen extends StatefulWidget {
  const ScndScreen({ Key? key }) : super(key: key);

  @override
  _ScndScreenState createState() => _ScndScreenState();
}

class _ScndScreenState extends State<ScndScreen> {
  var user = {
    "username": "Owais Ahmed Khan",
    "address": "Karachi, Pakistan",
    "designation": "Software Engineer",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${user['username']}\'s Profile",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arial',
          ),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("User's Details"),
            Image.network("https://avatars.githubusercontent.com/u/57331778?v=4",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            Text("Name: ${user['username']}"),
            Text("Address: ${user['address']}"),
            Text("Designation: ${user['designation']}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Contact Me")),
                ElevatedButton(onPressed: () {
                  print("User Designation before change: ${user['designation']}");
                  setState(() {
                    user['designation'] = "Senior Software Engineer";
                  });
                  print("User Designation a`fter change: ${user['designation']}`");
                }, child: Text("Change Me")),
              ],
            )
          ],
        ),
      ),
    );
  }
}