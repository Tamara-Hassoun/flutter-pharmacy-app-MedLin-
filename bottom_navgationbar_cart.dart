import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/cart_controller.dart';
import 'package:medlink/controllers/order_Controller.dart';
import 'package:medlink/items/button.dart';

class BottomNavgationBarCart extends StatelessWidget {

  CartController controller = Get.find();
orderController orController =Get.find();
  BottomNavgationBarCart({super.key});
  @override
  Widget build(BuildContext context) {
    return   Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Divider(),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("29".tr,style: TextStyle(fontSize: 16,color: Colors.blue),),
                ),
                Spacer(flex: 1,),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("\$${controller.total}",style: TextStyle(fontSize: 16,color: Colors.blue),),
                ),
                SizedBox(height:10),
                
              
              ],
            ),
            Button(text:"30".tr
            , color:const Color.fromARGB(255, 87, 169, 220),
            Pressed: ()async{
          await orController.order();
              }
              )
          ],
        ),
      );
     
  
  }
}