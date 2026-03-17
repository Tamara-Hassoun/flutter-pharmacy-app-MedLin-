
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/get_favourit_controlle.dart';
import 'package:medlink/controllers/logout.dart';
import 'package:medlink/items/cat_medecine.dart';
import 'package:medlink/items/log_out.dart';
import 'package:medlink/models/favourit_model.dart';
import 'package:medlink/screens/favurit_page.dart';
import 'package:medlink/screens/login.dart';
import 'package:medlink/screens/report_page.dart';
import '../items/cat_med.dart';

class Category extends StatelessWidget{
  LogoutController logoutController=Get.find();
  getfavouriteController controller=Get.find();
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      drawer: Drawer(
  
        child: Column(
children: [
  UserAccountsDrawerHeader(
  
    accountName: Text("MedLink"), accountEmail: Text("--------")),

  ListTile(
    title: Text("41".tr),
    leading: Icon(Icons.favorite),
    onTap: ()async{
      await controller.getfavourite();
      List <favouritModel>list =      await controller.getfavourite();

Get.to(favouriPage(),arguments: list);
    },
  ),
   ListTile(
    title: Text("42".tr),
    leading: Icon(Icons.receipt_outlined),
    onTap: (){
      Get.to(reportPage());
    },
  ),
   ListTile(
title:Text("14".tr) ,
leading: Icon(Icons.exit_to_app),
onTap: (){
 logoutController.logout();
Get.offAll(LogIn());

},
),
],
      ),),

      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 71, 166, 244),
      title:  Text("8".tr),
     
      ),
      body:
       Container(
        child:
      Column(
        
        children: [
          Expanded(child: Cat_Medecine(text: "9".tr,id: 1, name: "lib/images/3.jpg"),),
          Expanded(child: Cat_Med(text: "10".tr, id: 2,name: "lib/images/7.jpg"),),
          Expanded(child: Cat_Medecine(text: "11".tr, id: 3,name: "lib/images/5.jpg"),),
          Expanded(child: Cat_Med(text: "12".tr, id: 4,name: "lib/images/6.jpg"),),
          Expanded(child: Cat_Medecine(text: "13".tr, id: 5,name: "lib/images/4.jpg")
      ),
 
      ]))
     ,
      
    );
    
     
  }
}