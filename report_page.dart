import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:medlink/controllers/report_controller.dart';
import 'package:medlink/items/List_report.dart';
import 'package:medlink/items/add_product_Button.dart';

import 'package:medlink/pallete.dart';

class reportPage extends StatefulWidget {
   reportPage({super.key});

  @override
  State<reportPage> createState() => _reportPageState();
}

class _reportPageState extends State<reportPage> {
reportController controller=Get.find();
String start ="";
String end ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("42".tr),
        
      ),
      body: Center(
        child: Column(children: [
                       TextFormField( 
                        onChanged: (Value){
                          setState(() {
                            this.start=Value;
                          });
                        },
        decoration: InputDecoration(
          
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            
            borderSide: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.gradient4,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText:"43".tr,
        ),
      ),
          SizedBox(height: 10,),
                    TextFormField( 
                                   onChanged: (Value){
setState(() {
  this.end=Value;
});                        },
        decoration: InputDecoration(
          
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            
            borderSide: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.gradient4,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText:"44".tr,
        ),
      ),
          SizedBox(height: 30,),
          addProductButton(onPressed: ()async{
            print(start);
            print(end);
           await  controller.fetchreport(this.start,this.end);
           Get.to(report());
          }, name: "45".tr)



        ],),
      ),
    );
  }
}