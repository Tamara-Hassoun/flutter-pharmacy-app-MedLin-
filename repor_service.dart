import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/helper/api.dart';
import 'package:medlink/models/order_model.dart';
import 'package:medlink/models/report_model.dart';

class reportService {
 

Future<List<reportModel>>getAllreport(String start,String end) async{
print(start);
print(end);

 Map body = {
        'start': start,
        'end': end,
      };
      print(body);
 
List<dynamic>data =await Api().post(url:"http://10.0.2.2:8000/api/medicine/report2",body:body );

  List<reportModel>ordersList =[] ;
  for(int i=0;i<data.length; i++ )
{
ordersList.add(
 reportModel.fromJson(data[i])
);
}
   
 
  return ordersList;
  
}




}