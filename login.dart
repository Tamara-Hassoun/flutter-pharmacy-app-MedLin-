import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/login_controller.dart';
import 'package:medlink/items/button.dart';
import 'package:medlink/items/textformfield.dart';
import 'package:medlink/screens/signup.dart';

import '../items/bottom_bar.dart';

class LogIn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  
    return start();
  }

}
class start extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
   LoginController loginController =Get.find();
    return Scaffold(
      body: Container(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Container(
            height: 150,
            margin: const EdgeInsets.only(left: 20,top: 70,bottom: 40),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 36),
                  child:
              Column(
                children: [
                 Text("1".tr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 35
          ),),
          const Text("MedLink ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),),
              ],)),
          const Spacer(flex: 2,),
          Hero(
            tag: 'madlink',
            child: const CircleAvatar(backgroundImage: AssetImage("lib/images/Medlink.png",
            ),radius: 60,
            ),
          ),
          const Spacer(flex: 1,)
            ],)
         ),
          Expanded(child: Container(
            padding: const EdgeInsets.only(top: 77,left: 30,right: 30,bottom: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
              topRight: Radius.circular(65))
            ),
            child: SingleChildScrollView(child: 
            Column(children: [
            TextForm(
              textEditingController: loginController.phoneNumberController,
              obs: false,
              text: "2".tr,
              type: TextInputType.phone,
              icon: Icons.phone,

             ),
            const SizedBox(height: 50
            ,),
            TextForm(
              textEditingController: loginController.passwordController,
              obs: true,
              text: "3".tr,
              type: TextInputType.text,
              icon: Icons.edit_sharp,           
            ),
          const SizedBox(height: 40,),
          Button(text:"4".tr
          , color:const Color.fromARGB(255, 87, 169, 220),
          Pressed: (){
           loginController.loginWithEmail();
          },
          ),
          Container(
            padding: const EdgeInsets.only(top: 17),
            child: const Divider(thickness: 3,color: Color.fromARGB(255, 87, 169, 220),),
          ),
          Container(
            padding: const EdgeInsets.only(top:50 ),
          
            width: 200,
            child: Button(
              text: "5".tr,
              Pressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return SignUp();
            }
            )
            ); 
              },
              color: const Color.fromARGB(255, 110, 135, 154),
            ),
          )
            ],),)
          )
          ),
        ]),
        
      ),
    );
  }


}