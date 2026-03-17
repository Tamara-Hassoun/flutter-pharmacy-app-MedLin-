import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medlink/screens/change_lang.dart';
import 'package:medlink/screens/login.dart';

import '../items/gradiant_button.dart';
import '../pallete.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});
  

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  double hi= 200;
  double wi= 200;
  double ri= 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
        
        colors: [
          
          Pallete.gradient2,
          Pallete.gradient3,
          Pallete.gradient4,
          Pallete.gradient7
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
        
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children:<Widget> [
              Center(
                child: AnimatedContainer(
                  duration:Duration(seconds: 3) ,
                  height: hi,
                  width: wi,
                  child: Hero(
                    tag: 'medlink',
                    child: CircleAvatar(backgroundImage: AssetImage("lib/images/Medlink.png",
                            
                            )),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    
                    borderRadius: BorderRadius.circular(ri,

                     )
                  ),
                  onEnd: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ChangLang();
                    }));
                  },
                  ),
              ),
            Container(
                height: 70,
                width: 300,

                child: GradientButton(onPressed: () {
                  setState(() {
                    hi=50 ;
                    wi=50 ;
                    ri =50 ;
                
                  });
                
                
                
                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}