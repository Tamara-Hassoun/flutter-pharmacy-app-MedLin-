import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/cart_controller.dart';
import 'package:medlink/controllers/order_Controller.dart';
import 'package:medlink/models/product_model.dart';

class ItemsCart extends StatelessWidget {
  
  final ProductModel product;
  final int quantity;
  final int index;

   ItemsCart({
    required this.product,
    required this.quantity,
    required this.index,
    });
   CartController controller = Get.find();
   orderController orController=Get.find();
  
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Column(
        children: [
          Card(
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child:Image.asset(product.image.toString(),
                height: 90,
                fit: BoxFit.cover,)),
                Expanded(flex: 3,
                  child: ListTile(
                    title: Text(product.scientificName.toString()
                    ,style: TextStyle(fontSize: 15),),
                    subtitle: Text("\$${controller.productSubTotal[index]}"
                    ,style: TextStyle(fontSize: 17),),
                  )),
                  Expanded(flex: 1,
                    child: Container(
              
                    child: IconButton( onPressed: (){
                      controller.removeOneProduct(product);
                    },icon: Icon(Icons.delete,color: Colors.blue,),),
                  ),),
                Expanded(flex: 1,
                  child: Column(children: [
                  Container(
                    height: 35,
                    child: IconButton( onPressed: (){
                      controller.addProductToCart(product);
                      
                    },icon: Icon(Icons.add,color: Colors.blue,),),
                  ),
                  Container(
                    height: 30,
                    child: Text('${quantity}'),
                  ),
                  Container(
                    height: 35,
                    child: IconButton( onPressed: (){
                      controller.removeProductFromCart(product);
                    },icon: Icon(Icons.remove,color: Colors.blue,),),
                  ),
                ],))
            ],
          ),
        ),
      ),
      MaterialButton(onPressed: (){
        orController.addToRequest(product.id!, quantity);
        print(orController.request.value) ;
                             Get.defaultDialog(
 title: "38".tr,
  content: Text("39".tr)
);
      },
      child: Text("40".tr),
      color: Colors.blueGrey,
      
      )

        ],
      )
    );
  }
}