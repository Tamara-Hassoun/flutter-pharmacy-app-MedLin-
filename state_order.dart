import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class StateOrder extends StatelessWidget {
  const StateOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding:EdgeInsets.all(10),
      child: Row(children: [
        Column(children: [Text("6".tr),
        Text("22".tr)
        ],
        )
      ],),
    );
  }
}