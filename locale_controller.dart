import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:medlink/main.dart';

class MyLocaleController extends GetxController{
  Locale intialLang = sharedPreferences!.getString("lang") == "ar" ? Locale("ar") : Locale("en");
  
  void changeLang(String codeLang){
    Locale locale = Locale(codeLang);
    sharedPreferences!.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
}