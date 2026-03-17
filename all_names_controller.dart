
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:medlink/helper/api.dart';
import 'package:medlink/main.dart';

class allNamesController extends GetxController{
var ListNames= <dynamic>[].obs ;
 
 @override

 void onReady()async{
  await getAllNames ();   
  super.onReady();
 }

Future<void>getAllNames()async{

List<dynamic> data =await Api().get(url: "http://10.0.2.2:8000/api/medicine/Data/get_all",token: sharedPreferences!.getString("token"));
  ListNames.assignAll(data); 
  
}
}