import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:medlink/controllers/login_controller.dart';
import 'package:medlink/main.dart';
import 'package:medlink/screens/login.dart';

class LogoutController extends GetxController {
LoginController loginController=Get.find();
  Future<void> logout() async {
     Map<String ,String>headers ={}; 
  if (sharedPreferences!.getString("token")!=null ){
headers.addAll({
"Authorization":"Bearer ${sharedPreferences!.getString("token")} ",
});
}
    
      var url = Uri.parse(
     "http://10.0.2.2:8000/api/auth/logout"
        );
    
      http.Response response =
          await http.post(url,  headers: headers);
await sharedPreferences!.clear();
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        
          var message = json["message"]; 
         
     
          
Get.defaultDialog(
 title: "success",
  content: Text(message)
);
       
      } 
  
    } 
  }
