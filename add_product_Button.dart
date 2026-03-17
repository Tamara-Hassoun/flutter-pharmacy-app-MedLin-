import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:medlink/pallete.dart';



class addProductButton extends StatelessWidget {
  const addProductButton({Key? key,required this.onPressed, required this.name}) : super(key: key);
final  Function()? onPressed ;
final String name ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Pallete.gradient4,
            Pallete.gradient5,
            Pallete.gradient6,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed ,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child:  Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}