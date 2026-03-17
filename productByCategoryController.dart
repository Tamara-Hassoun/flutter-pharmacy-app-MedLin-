import 'package:get/get.dart';
import 'package:medlink/models/product_model.dart';
import 'package:medlink/services/productByProductService.dart';


class productByCategoryController extends GetxController{
var isLoading =true.obs ;
var ListProduct= <ProductModel>[].obs ;

  var id=1 ;

 @override
 void onReady()async{
  await fetchProducts();   


  super.onReady();
 }
  @override
void onClose(){
  isLoading(false);
update() ;

  super.onClose();
}


Future<void> fetchProducts()async {
try{
isLoading(true);
print("id in controller");
print(id);
var products=await productByProductService().getCategoriesProduct(id:id);
print("response in controller");
print(products);

  ListProduct.assignAll(products); 
  print("ListProduct");
print(ListProduct);



}
finally{
isLoading(false);
update() ;

}




}
Future<void> setId (int id)async{
   this.id=id ;
  update();
}



}