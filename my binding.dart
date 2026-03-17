import 'package:get/get.dart';
import 'package:medlink/controllers/RegisterationController.dart';
import 'package:medlink/controllers/all_names_controller.dart';
import 'package:medlink/controllers/cart_controller.dart';
import 'package:medlink/controllers/favorite_controller.dart';
import 'package:medlink/controllers/get_favourit_controlle.dart';
import 'package:medlink/controllers/login_controller.dart';
import 'package:medlink/controllers/logout.dart';
import 'package:medlink/controllers/order_Controller.dart';
import 'package:medlink/controllers/productByCategoryController.dart';
import 'package:medlink/controllers/report_controller.dart';

class myBinding implements Bindings{
  @override
  void dependencies() {

Get.lazyPut(() => RegisterationController(),fenix: true);
Get.lazyPut(() => LoginController(),fenix: true);
Get.lazyPut(() => LogoutController(),fenix: true);
Get.lazyPut(() => allNamesController(),fenix: true);
Get.lazyPut(() => CartController(),fenix: true);
Get.lazyPut(() => reportController(),fenix: true);
Get.lazyPut(() => orderController(),fenix: true);
Get.lazyPut(() => productByCategoryController(),fenix: true);
 Get.lazyPut(() => getfavouriteController(),fenix: true);
 Get.lazyPut(() => FavoriteController(),fenix: true);
  }

}