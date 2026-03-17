import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/logout.dart';
import 'package:medlink/pallete.dart';

class logoutButton extends StatelessWidget {
   logoutButton({super.key, this.onpressed});
final void Function()?onpressed ;
LogoutController logoutController=Get.find();

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        
       gradient:  LinearGradient(
          colors: [
            Pallete.gradient6,
            Pallete.gradient7,
            Pallete.whiteColor,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(150, 75),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child:  Text(
          '14'.tr,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      )
      );
  }
}