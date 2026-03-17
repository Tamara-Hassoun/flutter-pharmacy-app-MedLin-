import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:medlink/items/button.dart';
import 'package:medlink/items/floting_button.dart';
import 'package:medlink/items/textformfield.dart';
import 'package:medlink/models/product_model.dart';
import 'package:medlink/screens/cart.dart';

class detailsPage extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    ProductModel product =ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar:AppBar(
        title:  Text ("16".tr
        
        ),
        backgroundColor:       const Color.fromARGB(255, 42, 150, 237),
elevation: 0,
        
      ),
      floatingActionButton: FlotingButton(
      color:  const Color.fromARGB(255, 42, 150, 237),
      ),
      body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 42, 150, 237),
               Color.fromARGB(255, 116, 186, 244),
               Color.fromARGB(255, 142, 187, 224),
              Color.fromARGB(255, 69, 162, 238),
              Color.fromARGB(255, 137, 190, 234)
             
            ]
            
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Container(
            height: 150,
            margin: const EdgeInsets.only(left: 20,top: 70,bottom: 40),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 36),
                  child:
              Column(
                children: [
                 Text(product.scientificName.toString() ,
          style: TextStyle(
            color: Colors.white,
            fontSize: 35
          ),),
           Text(product.tradeName.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),),
              ],)),
          const Spacer(flex: 2,),
           CircleAvatar(backgroundImage: AssetImage(product.image.toString(),
          ),radius: 60,
          ),
          const Spacer(flex: 1,)
            ],)
         ),
          Expanded(child: Container(
            padding: const EdgeInsets.only(top: 77,left: 40,right: 40,bottom: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
              topRight: Radius.circular(65))
            ),
            child:  Padding(
              padding: EdgeInsets.only(right: 18),
              child: Container(
                 child: DataTable(columns:  [
                   DataColumn(label: Text('17'.tr)),
                   DataColumn(label: Text(product.scientificName.toString()),)
                   ], rows:  [
    
                   DataRow(cells: [
      DataCell(Text("18".tr)),
      DataCell(Text(product.tradeName.toString())),
    ]),
    DataRow(cells: [
      DataCell(Text("19".tr)),
      DataCell(Text(product.classification.toString())),
    ]),
    DataRow(cells: [
      DataCell(Text("20".tr)),
      DataCell(Text(product.price.toString())),
    ]),
    DataRow(cells: [
      DataCell(Text("21".tr)),
      DataCell(Text(product.manufacturer.toString())),
    ]),
    DataRow(cells: [
      DataCell(Text("22".tr)),
      DataCell(Text(product.availableQuantit.toString())),
    ]),
    DataRow(cells: [
      DataCell(Text("23".tr)),
      DataCell(Text(product.expiryDate.toString())),
    ])
    
    
    
    
    
    
    
      ]),
    ),
            ),
          )
          ),
        ]),
        
      ), 
    );
  }
}