import 'package:flutter/material.dart';


class Button extends StatelessWidget{
  const Button({required this.text,required this.color, required this.Pressed});
   final String ?text;
   final Color ?color;
final  Function() Pressed  ;
  
 

  @override
  Widget build(BuildContext context) {
  
    return ElevatedButton(onPressed: Pressed,
                
                 child:
                   Text(text!,) ,
                  style: ElevatedButton.styleFrom(primary:color),
                );
  }
  
 
}