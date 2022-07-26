import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe3/components/item.dart';
import 'package:recipe3/components/menu.dart';
import 'package:recipe3/components/title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily:  'PatuaOne'
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: _recipeAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RTitle(),
            RMenu(),
            RItem()
          ],
        ),
      )
    );
  }
AppBar _recipeAppbar(){
return AppBar(
  elevation: 1,
  backgroundColor: Colors.white,
  actions: [
    Icon(
      CupertinoIcons.search,
      color: Colors.black,
      size: 30,
    ),
    SizedBox(width: 15,),
    Icon(
      CupertinoIcons.heart,
      color: Colors.red,
      size: 30,
    ),
  ],
);
}
}

