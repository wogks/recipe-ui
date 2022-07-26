import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RItem extends StatelessWidget {
  RItem(this.imageName,this.title,{Key? key,}) : super(key: key);
 String imageName = '';// 왜 '';이부분이 없으면 안되는지?
 String title = '';

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/$imageName.jpeg',fit: BoxFit.cover,),
          Text(title, style: TextStyle(fontSize: 25),),
          Text('Have u ever made ur own $title? Once uve tried a homemade $title, u will never go back',
          style: TextStyle(fontSize: 12,color: Colors.grey),)
        ],
      ),
    );
  }

}