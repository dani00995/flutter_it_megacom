import 'package:flutter/material.dart';
import 'package:flutter_it_megacom/homeWork/lessone_1_home_work.dart';
import 'package:flutter_it_megacom/homeWork/lessone_1_home_work_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //HOME WORK
      //Lessone 1    
      //home: const LessoneOneHomeWork(),
      home: const LessoneOneHomeWorkTwo(),
    );
  }
}


