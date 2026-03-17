
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/productByCategoryController.dart';
import 'package:medlink/models/product_model.dart';
import 'package:medlink/screens/products.dart';

class Cat_Medecine extends StatelessWidget{
  Cat_Medecine({required this.text,required this.id,required this.name});
  final String text;
  final  String name;
  final int id;
    
  productByCategoryController controller=Get.find();
 

  @override
  Widget build(BuildContext context) {
  
    return  GestureDetector(
        onTap: ()async {
          print(id);
        await controller.setId(this.id);
        await controller.fetchProducts();
           List<ProductModel>list=controller.ListProduct.value;

        Get.to(Products(),arguments:list );
        },
        child:
            Container(
              margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
              color:
              const Color.fromARGB(255, 108, 184, 246),
              child:
            Row(children: [
              Text(text,style: const TextStyle(color: Colors.white,),),
              const Spacer(flex: 2,),
               Image.asset(name,height:300,width: 170,),
             
            ],)
            ), );
      

    
      
  }
  
 
}