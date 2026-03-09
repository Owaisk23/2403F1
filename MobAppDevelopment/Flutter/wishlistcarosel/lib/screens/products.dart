// import 'dart:convert';
// import 'dart:typed_data';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_crud/screens/productDetailScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class Products extends StatefulWidget {
//   const Products({Key? key}) : super(key: key);

//   @override
//   _ProductsState createState() => _ProductsState();
// }

// class _ProductsState extends State<Products> {
//   // var products = FirebaseFirestore.instance.collection('products').snapshots();
//   var products = FirebaseFirestore.instance.collection('products');

//   void deleteProduct(String id)async{
//     print(id);
//     try{
//       await products.doc(id).delete();
//       print("Product Deleted");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Product Deleted Successfully"),
//         duration: Duration(seconds: 2),
//         backgroundColor: Colors.red,
//         )
//       );
//     }catch(e){
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(e.toString()),
//         duration: Duration(seconds: 2),
//         backgroundColor: Colors.red,
//         ));
//     }
//   }

//   // Edit Product Function
//   void editProduct(Map<String, dynamic> productDetails){
//     showDialog(context: context, builder: (context){
//       TextEditingController titleController = TextEditingController(text: productDetails['title']);
//       TextEditingController desController = TextEditingController(text: productDetails['description']);
//       TextEditingController priceController = TextEditingController(text: productDetails['price'].toString());

//       String imgUrl = productDetails['image'];
//       final ImagePicker picker = ImagePicker();

//       getImage() async{
//         final XFile? image = await picker.pickImage(source: ImageSource.gallery);

//         if(image != null){
//           final Uint8List byteImage = await image.readAsBytes();
//           final String base64img = base64Encode(byteImage);
//           setState((){
//             imgUrl = base64img;
//           });
//         }
//       }

//       return AlertDialog(
//         title: Text("Edit product: ${productDetails['title']}"),
//         content: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: titleController,
//                 decoration: InputDecoration(
//                   labelText: "Title",
//                   hintText: "Enter the title of product",
//                 ),
//               ),
//               TextField(
//                 controller: desController,
//                 decoration: InputDecoration(
//                   labelText: "Description",
//                   hintText: "Enter the description of product",
//                 ),
//               ),
//               TextField(
//                 controller: priceController,
//                 decoration: InputDecoration(
//                   labelText: "Price",
//                   hintText: "Enter the price of product",
//                 ),
//               ),
//               SizedBox(height: 10,),
//               ElevatedButton(
//                 onPressed: getImage,
//                 child: Text("Choose File"),
//               ),
//               SizedBox(height: 10,),
//               imgUrl.isNotEmpty ? Image.memory(base64Decode(imgUrl), height: 100,) : Container(),
//             ],),
//         ),
//         actions: [
//           ElevatedButton(onPressed: (){
//             Navigator.pop(context);
//           }, child: Text("Cancel")),
//           ElevatedButton(
//             onPressed: (){
//               try{
//                 double price = double.parse(priceController.text);
//                 products.doc(productDetails['id']).update({
//                   'title': titleController.text,
//                   'description': desController.text,
//                   'price': price,
//                   'image': imgUrl,
//                 }).then((value){
//                   Navigator.pop(context);
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("Product Updated Successfully"),
//                     duration: Duration(seconds: 2),
//                     backgroundColor: Colors.green,
//                     )
//                   );
//                 });
//               }catch(e){
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text("Failed to update product: $e"),
//                   duration: Duration(seconds: 2),
//                   backgroundColor: Colors.red,
//                   )
//                 );
//               }
//             },
//             child: Text("Update Product")),
//         ],
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // title: Text("DATA FETCH FROM DATABASE"),
//         // centerTitle: true,
//         // backgroundColor: Colors.amber,

//         actions: [
//           IconButton(
//             icon: Icon(Icons.add),
//             onPressed: (){
//               Navigator.pushNamed(context, '/add');
//             },
//           )
//         ],
//       ),
//       body: Center(
//         child: StreamBuilder(
//           stream: products.snapshots(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               var productList = snapshot.data!.docs;
//               return ListView.builder(
//                 itemCount: productList.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(productList[index]['title']),
//                     subtitle: Text(productList[index]['description']),
//                     leading: CircleAvatar(
//                       // child: Image.network(productList[index]['image'], height: 40,),),
//                       child: Image.memory(base64Decode(productList[index]['image']), height: 40,)),
//                     // trailing: Text(productList[index]['price'].toString()),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(onPressed: (){
//                           Map<String, dynamic> productDetails = {
//                             'title': productList[index]['title'],
//                             'description': productList[index]['description'],
//                             'price': productList[index]['price'],
//                             'image': productList[index]['image'],
//                           };
//                           Navigator.push(context, MaterialPageRoute(
//                             builder: (context)=> ProductDetailScreen(productDetails)
//                           ));
//                         },
                        
//                          icon: Icon(Icons.info)),
//                         IconButton(
//                           icon: Icon(Icons.delete, color: Colors.red,),
//                           onPressed: (){
//                             deleteProduct(productList[index].id);
//                           },
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             }else{
//               return CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
