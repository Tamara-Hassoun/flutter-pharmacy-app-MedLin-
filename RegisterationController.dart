
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:medlink/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterationController extends GetxController {
    TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    try {
       var headers = {'Content-Type': 'application/json'};

      var url = Uri.parse("http://10.0.2.2:8000/api/auth/register");
      Map body = {
        "name":nameController.text,
        'email': emailController.text.trim(),
        'phoneNumber': phoneNumberController.text,
        'password': passwordController.text,
        "password_confirmation":passwordController.text,
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
          var token = json["token"];
          var message=json["message"];
          final SharedPreferences? prefs = await _prefs;

          await prefs?.setString('token', token);
          phoneNumberController.clear();
          emailController.clear();
          passwordController.clear();
 
          Get.off(LogIn());
       Get.defaultDialog(
 title: "successe",
  content: Text("User Created Successfully")
);
       
      } else {
        throw jsonDecode(response.body)[  "message"] ?? "Unknown Error Occured";
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Error'),
              contentPadding: EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}