import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/cart_controller.dart';
import 'package:medlink/items/bottom_navgationbar_cart.dart';
import 'package:medlink/items/items_cart.dart';

class Cart extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
     CartController controller= Get.find();
    return Scaffold(
      bottomNavigationBar: BottomNavgationBarCart(),
      body: Obx(() =>
         Column(children: [
          Container(
            alignment: Alignment.center,
            child: Text("28".tr,style: TextStyle(color: Colors.blue,fontSize: 26,fontWeight: FontWeight.bold),),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context,int index){
              return ItemsCart(
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index,
              );
            }
            
            )
          
        ],),
      ),
    );
  }
} 