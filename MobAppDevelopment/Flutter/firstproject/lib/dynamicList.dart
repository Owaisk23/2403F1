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

  var Cars = [
    {
      "name": "BMW",
      "model": "X5",
      "price": 50000,
      "color": "Black",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Audi",
      "model": "A6",
      "price": 60000,
      "color": "White",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Mercedes",
      "model": "C-Class",
      "price": 70000,
      "color": "Silver",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Toyota",
      "model": "Camry",
      "price": 30000,
      "color": "Blue",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    },
    {
      "name": "Honda",
      "model": "Accord",
      "price": 25000,
      "color": "Red",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH-ZyBZr-4egsRsDzy9JjuJNQ8HAzQEyuQFw&s",
    }
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic List'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body:Center(
        child:  ListView.builder(
        itemCount: Cars.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
            title: Text('${Cars[index]['name']}'),
            subtitle: Text('Car Model: ${Cars[index]['model']} \nCar Color: ${Cars[index]['color']}'),
            leading: Image.network('${Cars[index]['image']}'),
            trailing: Text('Car Price: ${Cars[index]['price']}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)
          ),
          );
        },
      )
      ),

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //      appBar: AppBar(
  //       title: Text(
  //         "Dynamic List View",
  //         style: TextStyle(
  //           fontSize: 30,
  //           fontWeight: FontWeight.bold,
  //           fontFamily: 'Arial',
  //         ),
  //       ),
  //       backgroundColor: Colors.black,
  //       foregroundColor: Colors.white,
  //       centerTitle: true,
  //     ),
  //     body: ListView.builder(
  //       itemCount: Users.length,
  //       itemBuilder: (context, index){
  //         return ListTile(
  //           title: Text(
  //             '${Users[index]['name']}',
  //             // Users[index]['name']!,
  //             style: TextStyle(
  //               fontSize: 20,
  //               fontWeight: FontWeight.w600,
  //             ),
  //           ),
  //           subtitle: Text(
  //             Users[index]['city']!,
  //             style: TextStyle(
  //               fontSize: 16,
  //               fontWeight: FontWeight.w400,
  //             ),
  //           ),
  //           leading: Icon(Icons.person, size: 40, color: Colors.blueAccent,),
  //           trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.grey,),
  //         );
  //       }),
    );
  }
}