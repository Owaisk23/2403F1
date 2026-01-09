import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({ Key? key }) : super(key: key);

  @override
  _DynamicListState createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  final Users = [
    {
      "name": "Owais Ahmed Khan",
      "city": "Karachi"
    },
    {
      "name": "Ashar Ahmed",
      "city": "Hyderabad"
    },
    {
      "name": "Do Nain",
      "city": "Islamabad"
    },
    {
      "name": "Burney PPP",
      "city": "Dholakpur"
    },
    {
      "name": "Ali Nawaz",
      "city": "Peshawar"
    },
    {
      "name": "Ayan",
      "city": "Lahore"
    },
    {
      "name": "SRK",
      "city": "Mumbai"
    },
    {
      "name": "Altaf Bhai",
      "city": "London"
    },
    {
      "name": "Trump",
      "city": "Washington DC"
    },
    {
      "name": "Do Nain",
      "city": "Islamabad"
    },
    {
      "name": "Burney PPP",
      "city": "Dholakpur"
    },
    {
      "name": "Ali Nawaz",
      "city": "Peshawar"
    },
    {
      "name": "Ayan",
      "city": "Lahore"
    },
    {
      "name": "SRK",
      "city": "Mumbai"
    },
    {
      "name": "Altaf Bhai",
      "city": "London"
    },
    {
      "name": "Trump",
      "city": "Washington DC"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          "Dynamic List View",
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
      body: ListView.builder(
        itemCount: Users.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(
              '${Users[index]['name']}',
              // Users[index]['name']!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              Users[index]['city']!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            leading: Icon(Icons.person, size: 40, color: Colors.blueAccent,),
            trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey,),
          );
        }),
    );
  }
}