import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

import 'package:medlink/main.dart';

class orderController extends GetxController{

var request =[{}].obs;
    var data = new Map<String, dynamic>();

  Map<String, dynamic> toJson(int id,int quantity) {
    data["medicine_id"] = id;
    data["quantity"]=quantity;
    return data;
  }
  void addToRequest(int id,int quantity){
    
      request.add(toJson(id, quantity));
   
  }
  Future<void> order() async {
    var headers = {
      'Content-Type': 'application/json',
       "Authorization":"Bearer ${sharedPreferences!.getString( "token")}",

    };
    try {
      var url = Uri.parse("http://10.0.2.2:8000/api/medicine/order");
      var body =this. request.value ;
        print(body);
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
          var messsge = json["message"];
      
     
        
          
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
