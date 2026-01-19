import 'package:firstproject/apiProducts.dart';
import 'package:firstproject/dynamicList.dart';
import 'package:firstproject/firstScreen.dart';
import 'package:firstproject/product.dart';
import 'package:firstproject/scndScreen.dart';
import 'package:flutter/material.dart';

class DrawerSidebar extends StatefulWidget {
  const DrawerSidebar({ Key? key }) : super(key: key);

  @override
  _DrawerSidebarState createState() => _DrawerSidebarState();
}

class _DrawerSidebarState extends State<DrawerSidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text(
              'Sidebar Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Scnd Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScndScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("First Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Dynamic List Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DynamicList()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Product Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("API Products Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ApiProducts()));
            },
          ),
        ],
      )
    );
  }
}