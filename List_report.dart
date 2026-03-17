import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/report_controller.dart';
import 'package:medlink/items/order.dart';
import 'package:medlink/models/order_model.dart';
import 'package:medlink/models/report_model.dart';

class report extends StatelessWidget {
   report({super.key,});

reportController controller=Get.find();
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
appBar: AppBar(
  title:Text("42".tr),
),
      body:  Obx(() {
if(controller.isLoading.value){
  return Center(child: CircularProgressIndicator());
}
else{
 List <reportModel> products=controller.ListReport ;
  return GridView.builder(
      clipBehavior: Clip.none,
      itemCount: products.length ,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        
        crossAxisCount: 5,
    crossAxisSpacing: 2,
    mainAxisSpacing: 2
      ) ,
      itemBuilder: (context, index) {

        
        return  Order(product:products[index] ,color:Colors.indigoAccent,id:products[index].id! ,);
      },
  ) ;
}




      })
    );
  }
}