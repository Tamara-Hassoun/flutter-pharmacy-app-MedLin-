import 'package:flutter/material.dart';


class TextForm extends StatelessWidget{
  TextForm({  
  required this.text,
  required this.obs,
  required this.type,required this.icon,
  this.textEditingController} 

  );
   
  final String ? text;
  final TextInputType ? type;
  final IconData ?icon;
  final bool obs;
TextEditingController? textEditingController ;
  @override
  Widget build(BuildContext context) {
  
    return Material(
                elevation: 33.0,
                shadowColor: const Color.fromARGB(255, 14, 125, 216),
                child:
                TextFormField(
            controller: textEditingController,
                  obscureText: obs,
                  keyboardType: type,
                  decoration: InputDecoration(
                    prefixIcon: Icon(icon,color: const Color.fromARGB(255, 87, 169, 220),),
                    hintText: text,
                    enabledBorder:const OutlineInputBorder(
                        borderSide: BorderSide(width: 1,color: Color.fromARGB(212, 0, 0, 0))
                    ) ,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1,color: Color.fromARGB(255, 119, 219, 237))
                    )
                  ),
                )
              );
  }
  
  
}