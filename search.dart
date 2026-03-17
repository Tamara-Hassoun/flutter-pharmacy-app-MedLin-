import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medlink/controllers/all_names_controller.dart';
import 'package:medlink/helper/api.dart';
import 'package:medlink/items/id_card.dart';
import 'package:medlink/models/product_model.dart';


class CusomSearchDelegate extends SearchDelegate {
allNamesController all_Names =Get.find();
Future searchData()async{
var data =await Api().get(url: "http://10.0.2.2:8000/api/medicine/${query}" );
ProductModel product =ProductModel.fromJson(data);
print(product);
return product ;


}      

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: (){
      query="";
    }, icon: const Padding(
      padding:  EdgeInsets.only(right: 8),
      child: Icon(Icons.clear),
    ))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(onPressed: (){
    close(context, null);
   }
   , icon:const Icon(Icons.arrow_back));
  }

  @override
  
  Widget buildResults(BuildContext context) {
    


return FutureBuilder(future:searchData() ,


 builder: (BuildContext context,AsyncSnapshot snapshot){
  if(snapshot.hasData){

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 100),
          child: Id_Card(product1:snapshot.data as ProductModel ),
        );   


  }
  return Center(child: CircularProgressIndicator(),);
 }
 
 );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<dynamic>list = all_Names.ListNames ;
      List <String>matchQuery=[];

     for(var medicine in list){
    if(medicine.toLowerCase().contains(query.toLowerCase())){
      matchQuery.add(medicine);
    }
  }
     return ListView.builder(itemBuilder: (context,i){
      return ListTile(leading: Icon(Icons.medical_services_sharp),
      title: Text(matchQuery[i]),
        onTap: (){
        query=matchQuery[i];
        showResults(context);
      },
      );
     },itemCount:matchQuery.length ,);
  }




}