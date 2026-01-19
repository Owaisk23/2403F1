import 'dart:convert';

import 'package:firstproject/drawerSidebar.dart' as drawerSidebar;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiProducts extends StatefulWidget {
  const ApiProducts({ Key? key }) : super(key: key);

  @override
  _ApiProductsState createState() => _ApiProductsState();
}

class _ApiProductsState extends State<ApiProducts> {
  Future<void> fetchProducts() async {
    var url = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(url);
    print(response.body);

    return jsonDecode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API Fetch Products",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: drawerSidebar.DrawerSidebar(),
      body: FutureBuilder(
        future: fetchProducts(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if(snapshot.hasError){
              return Center(
                child: Text("Error Occurred ${snapshot.error}"),
              );
            } else {
              var data = snapshot.data as Map<String, dynamic>;
              var products = data['products'] as List<dynamic>;
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index){
                  var product = products[index];
                  return ListTile(
                    leading: Image.network(product['thumbnail']),
                    title: Text(product['title']),
                    subtitle: Text("\$${product['price']}"),
                  );
                },
              );
            }
          }
        }),
    );
  }
}