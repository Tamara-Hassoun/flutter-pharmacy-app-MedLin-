import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/favorite_controller.dart';


class customCategoryCard extends StatelessWidget {
   customCategoryCard({super.key,  required this.name});
  final String name;
    FavoriteController controller=Get.find();



  @override
  Widget build(BuildContext context) {
    return 
    Container(
        height: 100,
        width: 100,
        color: Colors.blue,
        child: Center(child: Text(name)),
      );
         
            
        
       
    
  }
}