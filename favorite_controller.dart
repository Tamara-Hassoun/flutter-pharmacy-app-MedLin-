import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:medlink/main.dart';
import 'package:medlink/models/product_model.dart';

class FavoriteController extends GetxController{
var click=false.obs;
var id = 1;
  Future<void> addfav() async {
    var headers = {
      'Content-Type': 'application/json',
       "Authorization":"Bearer ${sharedPreferences!.getString( "token")}",

    };
    try {
      var url = Uri.parse("http://10.0.2.2:8000/api/medicine/favourite");
      var body ={
        "medicine_id":id
      };
        print(body);
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
          var messsge = json["message"];
     print(messsge); 
     
        
          
                     Get.defaultDialog(
 title: "Success",
  content: Text(messsge)
);
      } 


}
catch(e){
print(e.toString());
}
 
 
 
}

}