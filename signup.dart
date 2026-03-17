import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/RegisterationController.dart';

import '../items/bottom_bar.dart';
import '../items/button.dart';
import '../items/textformfield.dart';



class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  
    
    return Welcome ();
  }
  
}

class Welcome extends State<SignUp>{
  RegisterationController registerationController =Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 42, 150, 237),
               Color.fromARGB(255, 116, 186, 244),
               Color.fromARGB(255, 142, 187, 224),
              Color.fromARGB(255, 69, 162, 238),
              Color.fromARGB(255, 137, 190, 234)
             
            ]
            
            )
        ),
      child: Column(
        children: [
          const SizedBox(height:50),
          Text("5".tr,style: TextStyle(color: Colors.white,fontSize: 60,shadows:[
            Shadow(color: Colors.grey,blurRadius: 10,offset: Offset(0, 10))
          ] ),),
          Expanded(child:
          Container(
            margin: const EdgeInsets.only(top: 30 ,left: 20,right: 20),
             child: SingleChildScrollView(child: 
            Column(children: [
              const SizedBox(height: 60,),
              TextForm(
                textEditingController: registerationController.nameController,
              obs: false,
              text: "6".tr,
              type: TextInputType.text,
              icon: Icons.health_and_safety,
            
            ),
            const SizedBox(height: 20
            ,),
            TextForm(
              textEditingController:registerationController.phoneNumberController ,
              obs: false,
              text: "2".tr,
              type: TextInputType.phone,
              icon: Icons.phone,

             ),
            
             
          const SizedBox(height: 20,),
           TextForm(
            textEditingController: registerationController.emailController,
              obs: false,
              text: "7".tr,
              type: TextInputType.emailAddress,
              icon: Icons.email,

             ),
            
             
          const SizedBox(height: 20,),
            TextForm(
              textEditingController: registerationController.passwordController,
              obs: true,
              text: "3".tr,
              type: TextInputType.text,
              icon: Icons.edit_sharp,
            
            ),
          const SizedBox(height: 40,),
          
          Container(
            padding: const EdgeInsets.only(top: 17),
            child: const Divider(thickness: 3,color: Colors.white,),
          ),
          Container(
            padding: const EdgeInsets.only(top:45 ),
          
            width: 200,
            child: Button(
              Pressed: ()async{
          await registerationController.registerWithEmail();
            
              },
              text: "4".tr,
              color: const Color.fromARGB(255, 110, 135, 154),
            ),
          ),
          Row(children: [
            const CircleAvatar(backgroundColor: Colors.white,radius: 42
            ,child: CircleAvatar(backgroundImage: AssetImage("lib/images/1.jpg",),radius: 38,),
            ),
            const Spacer(flex: 2,),
            const CircleAvatar(backgroundColor: Colors.white,radius: 24,child:
            CircleAvatar(backgroundImage: AssetImage("lib/images/2.jpg"),radius: 20,)
            )
          ],)
            ],),)
          ),

          )
        ],
      ),
        ));
  }
}