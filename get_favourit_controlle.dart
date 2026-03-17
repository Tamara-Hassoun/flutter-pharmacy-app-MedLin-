import 'package:get/get.dart';

import 'package:medlink/helper/api.dart';
import 'package:medlink/models/favourit_model.dart';

class getfavouriteController extends GetxController{
var ListNames= <dynamic>[].obs ;
 
 @override

 void onReady()async{
  await getfavourite ();   
  super.onReady();
 }

Future<List<favouritModel>>getfavourite()async{

List<dynamic> data =await Api().get(url: "http://10.0.2.2:8000/api/medicine/data/getfavourite");
   List<favouritModel>ProductsList =[] ;
  for(int i=0;i<data.length; i++ )
{
ProductsList.add(
  favouritModel.fromJson(data[i],  
  )
);  
} 

return ProductsList ;
}
}