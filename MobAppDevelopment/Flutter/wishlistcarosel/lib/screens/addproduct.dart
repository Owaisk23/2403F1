import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addproduct extends StatefulWidget {
  const Addproduct({ Key? key }) : super(key: key);

  @override
  _AddproductState createState() => _AddproductState();
}

class _AddproductState extends State<Addproduct> {
  CollectionReference products = FirebaseFirestore.instance.collection('products');
  TextEditingController titleController = TextEditingController();
  TextEditingController desController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  // TextEditingController imageController = TextEditingController();

  String imgUrl = "";
  final ImagePicker picker = ImagePicker();
  getImage() async{
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    final Uint8List byteImage = await image!.readAsBytes();
  // image -> [23, 121, 255, 36128963, 3123912, 1423564......]
    print(byteImage);

    // base 64 algorithm

    final String base64img = base64Encode(byteImage);
    print(base64img);

    setState((){
      imgUrl = base64img;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Product"),
         actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.pushNamed(context, '/add');
            },
          )
        ],
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: ListView(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "Enter the title of product",
                ),
              ),
              TextField(
                controller: desController,
                decoration: InputDecoration(
                  labelText: "Description",
                  hintText: "Enter the description of product",
                ),
              ),
              TextField(
                controller: priceController,
                decoration: InputDecoration(
                  labelText: "Price",
                  hintText: "Enter the price of product",
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  getImage();
                },
                child: Text("Choose File"),
              ),
              ElevatedButton(
                // add product to firebase
                onPressed: (){
                  products.add({
                    'title': titleController.text,
                    'description': desController.text,
                    'price': double.parse(priceController.text),
                    'image': imgUrl,
                  }).then((value)=>{
                    titleController.clear(),
                    desController.clear(),
                    priceController.clear(),
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Product Added Successfully"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                      )
                    ),
                    Navigator.pop(context),
                  }).catchError((error)=> {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Failed to add product: $error"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.red,
                      )
                    )
                  });
                },
                child: Text("Add Product"),
              ),

            ],
          ),
        ),
      )
    );
  }
}