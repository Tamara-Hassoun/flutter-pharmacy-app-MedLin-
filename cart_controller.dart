import 'package:get/get.dart';
import 'package:medlink/helper/api.dart';
import 'package:medlink/models/order_model.dart';
import 'package:medlink/models/product_model.dart';
import 'package:medlink/screens/products.dart';
import 'package:flutter/src/rendering/box.dart';

class CartController extends GetxController{
  int total =0;
var products = {}.obs;
int id =1 ;

//  void setid(ProductModel product){
// this.id=product.id!;
//  }
  void addProductToCart (ProductModel product){
    if(products.containsKey(product)){
      products[product]+=1;
    }
    else{
      products[product]=1;
    }

    Get.snackbar("24".tr, "25".tr,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: 3)
    );
  }

  void removeProductFromCart(ProductModel product){
    if(products.containsKey(product)&& products[product]==1){
      products.removeWhere((key, value) => key == product);
    }
    else{
      products[product] -=1;
    }
     Get.snackbar("26".tr, "27".tr,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: 3)
    );
  }
  void removeOneProduct(ProductModel product){
    products.removeWhere((key, value) => key == product);
  }

  get productSubTotal => products.entries.map((product) => product.key.price *product.value).toList();


}