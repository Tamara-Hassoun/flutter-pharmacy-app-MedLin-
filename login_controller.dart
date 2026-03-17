import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:medlink/main.dart';
import 'package:medlink/screens/category.dart';
import 'package:medlink/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginWithEmail() async {
    var headers = {'Content-Type': 'application/json'};
    try {
      var url = Uri.parse("http://10.0.2.2:8000/api/auth/login");
      Map body = {
        "phoneNumber": phoneNumberController.text,
        'password': passwordController.text
      };
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
          var token = json["token"];
          String  message=json["message"];
          print("sss");
print(token);
        await sharedPreferences!.setString("token", token);
        print(sharedPreferences!.getString("token"));
          phoneNumberController.clear();
          passwordController.clear();
  
          Get.off(Home());
                     Get.defaultDialog(
 title: "Success",
  content: Text(message)
);
      } else {
        throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
      }
    } catch (error) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Error'),
              contentPadding: EdgeInsets.all(20),
              children: [Text(error.toString())],
            );
          });
    }
  }
}