import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/cart_controller.dart';
import 'package:medlink/models/product_model.dart';

class FlotingButton extends StatelessWidget {
   FlotingButton({required this.color,
     
   });
  CartController cartController = Get.find();
  final Color color;
  

  @override
  Widget build(BuildContext context) {
     ProductModel product =ModalRoute.of(context)!.settings.arguments as ProductModel;
    return  FloatingActionButton(
      onPressed:(){
        cartController.addProductToCart(product);
      
        
      },
      backgroundColor: color,
      child:Icon(Icons.add,)
    );
  }
}