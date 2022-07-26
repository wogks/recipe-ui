import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RItem extends StatelessWidget {
  RItem(String s,String a, {Key? key}) : super(key: key);
  String imageName = '';
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/$imageName.jpeg',fit: BoxFit.cover,),
        Text(title, style: TextStyle(fontSize: 30),)
      ],
    );
  }
}