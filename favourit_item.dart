import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/favorite_controller.dart';

class favItem extends StatefulWidget {
   favItem({skey, required this.name, required this.id});
final String name ;
final int id ;

  @override
  State<favItem> createState() => _favItemState();
}

class _favItemState extends State<favItem> {
   FavoriteController controller=Get.find();

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        Container(
          color: Colors.blue,
          child: ListTile(
            trailing: Text(widget.name) ,
            
            leading: MaterialButton(
              color: Colors.grey,
              onPressed: ()async{
                setState(() {
                  controller.id= widget.id ;
                });
        await controller.addfav();
            },
            child: Text("36".tr),
            ),
            
          ),
        ),
        SizedBox( 
          height: 20,
        )
      ],
    );
  }
}