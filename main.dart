import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hehhhe/CourseCard.dart';


import 'assignment.dart';

void main(){
  runApp(myApp());

}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'heheheh',
      home: assignment(),

    );
  }
}
