import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:medlink/items/search.dart';

import 'package:medlink/screens/cart.dart';
import 'package:medlink/screens/category.dart';
import 'package:medlink/screens/favourit.dart';
import 'package:medlink/screens/products.dart';
import 'package:medlink/screens/search_home.dart';

class BottomBar extends StatefulWidget {
 

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List<Widget>pages =[
    Category(),
    Cart(),
  searchHome(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[300],
         onTap: (index) {
           setState(() {
             selectedIndex = index;
           });
         },
        items: [
        BottomNavigationBarItem(label: "31".tr,icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(label: "28".tr,icon: Icon(Icons.article_outlined),
        ),
         BottomNavigationBarItem(label: "32".tr,icon: Icon(Icons.search),),

         ]),
         body: pages.elementAt(selectedIndex),
     );
  }
}       