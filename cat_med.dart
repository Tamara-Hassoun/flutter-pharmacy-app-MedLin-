import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/productByCategoryController.dart';
import 'package:medlink/models/product_model.dart';
import 'package:medlink/screens/products.dart';

class Cat_Med extends StatelessWidget{
  Cat_Med({required this.text,required this.id,required this.name});
   final String text;
 final  String name;
 final int id;

  
  productByCategoryController controller=Get.find();
 

  @override
  Widget build(BuildContext context) {
  
    return   GestureDetector(
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
              color:const Color.fromARGB(255, 94, 117, 117) ,
              child:
            Row(children: [
               Image.asset(name,height:300,width: 170,),
              const Spacer(flex: 2,),
               Text(text,style: const TextStyle(color: Color.fromARGB(255, 241, 242, 243),),),
             
            ],)
            ), );
    
      

    
  }
  
 
}