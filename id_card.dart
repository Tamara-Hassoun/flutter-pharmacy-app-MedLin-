
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/favorite_controller.dart';
import 'package:medlink/models/product_model.dart';
import 'package:medlink/screens/details_page.dart';

class Id_Card extends StatefulWidget{
  Id_Card( { 
     required this.product1,
   @required this.productId,
     
  });

   final ProductModel product1;
 final  int? productId;
bool click =false;
  @override
  State<Id_Card> createState() => _Id_CardState();
}

class _Id_CardState extends State<Id_Card> {
   FavoriteController controller =Get.find();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
body: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          
        
          padding: const EdgeInsets.only(top: 20),
          decoration:BoxDecoration(
            boxShadow: [
              BoxShadow(
               blurRadius: 50,
               color: const Color.fromARGB(255, 47, 127, 192).withOpacity(.2) ,
               spreadRadius: 20,
               offset: const Offset(1, 1)
              )
            ]
          ) ,
          child: GestureDetector(
            
            onTap: () {
             Get.to(detailsPage(),arguments: widget.product1);
            },
            child: Container(
              height: 160,
              child: Card(
                
                elevation: 30,
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                
                  child:
                 Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      widget.product1.scientificName.toString(),
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text( widget.product1.tradeName.toString(),
                         style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),),
                  Container(
                                     child: IconButton(
                                      color: widget.click?Colors.red:Colors.grey,
                                      onPressed:()async{     setState(() {
                            controller.id= widget.productId!  ;
                            widget.click=! widget.click ;
                          });
                    await controller.addfav();
                    
                          } , icon: Icon(Icons.favorite)),
                  )
              
                      ],
                    ),
                   
                  ],
                ),)
              ),
            ),
          ),
        ),
        Positioned(
          right: 35,
          top: -40,
          child:Image.asset(widget.product1.image.toString(),width: 100,),
          height: 100,) 
      ],
    ),

    );
  } 
}