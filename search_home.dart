import 'package:flutter/material.dart';
import 'package:medlink/items/search.dart';


class searchHome extends StatelessWidget {
  const searchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 71, 166, 244),
      
        actions: [
          
IconButton(onPressed: (){
  showSearch(context: context, delegate: CusomSearchDelegate());
}, icon:Icon(Icons.search))

      ]),
    ) ;
  }
}