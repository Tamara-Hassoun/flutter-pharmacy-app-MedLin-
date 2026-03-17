 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/favorite_controller.dart';
import 'package:medlink/controllers/productByCategoryController.dart';
import 'package:medlink/models/product_model.dart';

import '../items/id_card.dart';


class Products extends StatelessWidget{

  Products({super.key});
   productByCategoryController product_controller = Get.find();

  //  FavoriteController controller = Get.find();
  @override
  Widget build(BuildContext context) {
          List<ProductModel>list  = ModalRoute.of(context)!.settings.arguments as List<ProductModel>  ;

    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 71, 166, 244),
      title:  Text("15".tr),
      
      ),
      body:
      Obx((){
        if(product_controller.isLoading.value){
        return Center(child: CircularProgressIndicator(),);
        }
        else{
          List<ProductModel> products =list ;
          
          return  Padding(
        padding: const EdgeInsets.only(top: 50,left: 16,right: 16),
        child:
      GridView.builder(
        itemCount: products.length,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        childAspectRatio: 1.3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 80,
         )

      , itemBuilder: (context,index){
        return Id_Card(product1:products[index],productId: products[index].id!,);
      }),);
        }
      }
        
      ),
      
      

    );
  }
  
 
}