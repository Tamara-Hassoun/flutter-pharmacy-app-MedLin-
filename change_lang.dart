import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/locale_controller.dart';
import 'package:medlink/items/button.dart';
import 'package:medlink/pallete.dart';
import 'package:medlink/screens/login.dart';

class ChangLang extends StatelessWidget {
  const ChangLang({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController langController = Get.find();
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
      gradient: LinearGradient(
        
        colors: [
          
          Pallete.gradient2,
          Pallete.gradient3,
          Pallete.gradient4,
          Pallete.gradient7
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
        
        ),
        child: Center(
          child: Column(children: [
          
              Container(
                padding: EdgeInsets.only(top: 100),
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text("33".tr,style: TextStyle(color: const Color.fromARGB(255, 245, 246, 247),fontSize: 26,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 60,),
            Button(text: "34".tr,color: Colors.white,Pressed: (){
              langController.changeLang("en");
              Get.to(LogIn());
              
            },),
            SizedBox(height: 30,),
               Button(text: "35".tr,color: Colors.white,Pressed: (){
                langController.changeLang("ar");
                 Get.to(LogIn());
              
               },),
            ],),
        ),
      ), 
    );
  }
}