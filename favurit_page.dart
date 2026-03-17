import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/favorite_controller.dart';
import 'package:medlink/controllers/get_favourit_controlle.dart';
import 'package:medlink/items/custom_favourite_item.dart';
import 'package:medlink/items/favourit_item.dart';
import 'package:medlink/models/favourit_model.dart';

class favouriPage extends StatelessWidget {
   favouriPage({super.key});



  @override
  Widget build(BuildContext context) {
              List<favouritModel>list  = ModalRoute.of(context)!.settings.arguments as List<favouritModel>  ;

    return Scaffold(
      appBar: AppBar(
        title: Text("41".tr),

      ),

      body: ListView.builder(
        
        itemCount: list.length,
        itemBuilder: (BuildContext context,index){
   

        return  favItem(name:list[index].name!,id:list[index].id! , );
      }),
    );
  }
}