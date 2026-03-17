import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/report_controller.dart';
import 'package:medlink/models/order_model.dart';
import 'package:medlink/models/report_model.dart';


class Order extends StatelessWidget {
   Order({super.key,required this.product,@required this.color, required this.id});
   reportController controller=Get.find();


  reportModel product ;
  Color? color ;

  final int id;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
            
            children: [
              Container(
               decoration: BoxDecoration(
                
                boxShadow:  [
                  BoxShadow(
                    blurRadius: 40,
                    offset: Offset(10,10)
                  )
                ]
      
               ),
                child: Card(
                   color: color,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         Container(
                        padding:const EdgeInsets.only(top:10 ),
                        height: 27,
                         child: Text(
                     r'product id :' '${product.id}',
 
 
 
                             style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                       ),
                       Container(
                        padding:const EdgeInsets.only(top:10 ),
                        height: 27,
                         child: Text(
                     r'product  User number  :' '${product.userId}',
                            style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                       ),
                        
                  Container(
                    padding:const EdgeInsets.only(bottom: 3),
                    height: 35,
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                r' product status :'"${product.status}" ,
                           style: TextStyle(
                            fontSize: 15
                          ),
                        ),
                     
                      ],
                    ),
                  )
                      ],
                    ),
                  ),
                ),
              ),
       
              
          
            ],
          ),
      )
        
      
    );
  }
}