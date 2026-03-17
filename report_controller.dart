import 'package:get/get.dart';
import 'package:medlink/models/report_model.dart';
import 'package:medlink/services/repor_service.dart';

class reportController extends GetxController{
var isLoading =true.obs ;
var ListReport= <reportModel>[].obs ;

  var id=1 ;

 @override
 void onReady()async{
  


  super.onReady();
 }
  @override
void onClose(){
  isLoading(false);
update() ;

  super.onClose();
}


Future<void> fetchreport(String start,String end)async {
try{
isLoading(true);
var products=await reportService().getAllreport(start,end);
  ListReport.assignAll(products); 




}
finally{
isLoading(false);
update() ;

}




}




}