import 'dart:convert';

import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  var productDetails = {};
  ProductDetailScreen(this.productDetails, {super.key});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ListView(
        children: [
          Image.memory(base64Decode(widget.productDetails['image']), height: 300, fit: BoxFit.cover,),
          SizedBox(height: 20,),
          Text(widget.productDetails['title'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          Text(widget.productDetails['description'], style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          Text("\$ ${widget.productDetails['price'].toString()}", style: TextStyle(fontSize: 20, color: Colors.green), textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Go Back"),
          ),
          ElevatedButton(
            onPressed: (){
            },
            child: Text("Add To Cart"),
          ),

        ],
      ),),
    );
  }
}