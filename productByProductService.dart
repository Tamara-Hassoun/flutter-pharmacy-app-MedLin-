import 'package:medlink/main.dart';

import '../helper/api.dart';
import '../models/product_model.dart';

class productByProductService{
Future<List<ProductModel>> getCategoriesProduct({required int id}) async{
  print("id in service");
  print(id);
List<dynamic>data =await Api().get(url:"http://10.0.2.2:8000/api/category/${id}");
print("response");
print(data);
  List<ProductModel>ProductsList =[] ;
  for(int i=0;i<data.length; i++ )
{
ProductsList.add(
  ProductModel.fromJson(data[i],  
  )
);
}  print("return");
   print(ProductsList);
  return ProductsList ;
 
}



}