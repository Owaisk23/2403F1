import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/screens/MyWhishlist.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Products(),
    );
  }
}

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductssState();
}


class _ProductssState extends State<Products> {
  final CollectionReference products = FirebaseFirestore.instance.collection(
    'products',
  );
  final CollectionReference favorites = FirebaseFirestore.instance.collection(
    'favorites',
  );

  final TextEditingController searchController = TextEditingController();
  bool isSearching = false;

  List<DocumentSnapshot> searchResults = [];

  final String userId = FirebaseAuth.instance.currentUser!.uid;
  List<String> favoriteList = [];
  @override
  void initState() {
    super.initState();
    fetchFavProducts();
  }

  Future<void> fetchFavProducts() async {
    final favProducts = await favorites
        .where('userId', isEqualTo: userId)
        .get();

    favoriteList.clear();
    for (var doc in favProducts.docs) {
      favoriteList.add(doc['prodId']);
    }
    setState(() {});
  }

  Future<void> toggleFavorite(String prodId) async {
    if (favoriteList.contains(prodId)) {
      final favDoc = await favorites
          .where('userId', isEqualTo: userId)
          .where('prodId', isEqualTo: prodId)
          .get();

      for (var doc in favDoc.docs) {
        await favorites.doc(doc.id).delete();
      }

      setState(() {
        favoriteList.remove(prodId);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Removed from Favorites"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      await favorites.add({'userId': userId, 'prodId': prodId});

      setState(() {
        favoriteList.add(prodId);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Added to Favorites"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  void deleteProduct(String id) async {
    print(id);
    try {
      await products.doc(id).delete();
      print("Product Deleted");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Product Deleted Successfully"),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void editProduct(Map<String, dynamic> productDetails) {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController titleController = TextEditingController(
          text: productDetails['title'],
        );
        TextEditingController desController = TextEditingController(
          text: productDetails['description'],
        );
        TextEditingController priceController = TextEditingController(
          text: productDetails['price'].toString(),
        );

        String imgUrl = productDetails['image'];
        final ImagePicker picker = ImagePicker();

        getImage() async {
          final XFile? image = await picker.pickImage(
            source: ImageSource.gallery,
          );

          if (image != null) {
            final Uint8List byteImage = await image.readAsBytes();
            final String base64img = base64Encode(byteImage);
            setState(() {
              imgUrl = base64img;
            });
          }
        }

        return AlertDialog(
          title: Text("Edit product: ${productDetails['title']}"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                SizedBox(height: 10),
                ElevatedButton(onPressed: getImage, child: Text("Choose File")),
                SizedBox(height: 10),
                imgUrl.isNotEmpty
                    ? Image.memory(base64Decode(imgUrl), height: 100)
                    : Container(),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  double price = double.parse(priceController.text);
                  products
                      .doc(productDetails['id'])
                      .update({
                        'title': titleController.text,
                        'description': desController.text,
                        'price': price,
                        'image': imgUrl,
                      })
                      .then((value) {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Product Updated Successfully"),
                            duration: Duration(seconds: 2),
                            backgroundColor: Colors.green,
                          ),
                        );
                      });
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Failed to update product: $e"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: Text("Update Product"),
            ),
          ],
        );
      },
    );
  }

  void searchProducts() async {
    String query = searchController.text.trim().toLowerCase();
    if (query.isEmpty) return;

    final result = await products
        .where('title', isGreaterThanOrEqualTo: query)
        .where('title', isLessThanOrEqualTo: '$query\uf8ff')
        .get();

    setState(() {
      isSearching = true;
      searchResults = result.docs;
    });
  }

  void clearSearch() {
    setState(() {
      isSearching = false;
      searchController.clear();
      searchResults.clear();
    });
  }

  Widget buildProductTitle(DocumentSnapshot product) {
    return ListTile(
      leading: CircleAvatar(
        child: product['image'] != null && product['image'].isNotEmpty
            ? Image.memory(base64Decode(product['image']), height: 40)
            : const Icon(Icons.image),
      ),
      title: Text(product['title']),
      subtitle: Text(product['description']),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => toggleFavorite(product.id),
            icon: Icon(
              Icons.favorite,
              color: favoriteList.contains(product.id)
                  ? Colors.red
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyWhishlist()),
            );
          },
          icon: Icon(Icons.shopping_bag),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Search product",
                    ),
                    onSubmitted: (_) => searchProducts(),
                  ),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  onPressed: searchProducts,
                  child: const Text("Search"),
                ),
                if (isSearching)
                  TextButton(onPressed: clearSearch, child: Text("Clear")),
              ],
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: isSearching
               ? ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (_, i) => 
                  buildProductTitle(searchResults[i]),
                  ): StreamBuilder<QuerySnapshot>(
                    stream: products.snapshots(),
                     builder: (_, snapshot){
                      if(!snapshot.hasData){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                     }
                     return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (_,i) => 
                      buildProductTitle(snapshot.data!.docs[i]),
                      );
                     }
                     )
                    )
          ],
        ),
      ),
    );
  }
}
