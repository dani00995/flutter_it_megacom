import 'package:flutter/material.dart';
import 'package:flutter_it_megacom/homeWork/lesson4/lesson_4_homework_page_1.dart';
import 'package:flutter_it_megacom/homeWork/lesson4/lesson_4_homework_page_2.dart';
import 'package:flutter_it_megacom/homeWork/lesson4/lesson_4_homework_page_3.dart';
import 'package:flutter_it_megacom/homeWork/lesson5/lesson_5.dart';
import 'package:flutter_it_megacom/homeWork/lesson_2_homework.dart';
import 'package:flutter_it_megacom/homeWork/lesson_3_homework.dart';
import 'package:flutter_it_megacom/homeWork/lessone_1_home_work.dart';
import 'package:flutter_it_megacom/homeWork/lessone_1_home_work_2.dart';
import 'package:google_fonts/google_fonts.dart';

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
          fontFamily: GoogleFonts.poppins().fontFamily),

      //HOME WORK
      //Lesson 1
      //home: const LessoneOneHomeWork(),
      //home: const LessoneOneHomeWorkTwo(),

      //Lesson 2 and Lesson 5
      //Lesson 5. add fun animated on clicked
      home: const LessoneTwoHomeWork(),

      //Lesson 3
      //One Screen page - screenPage: 1
      //Two Screen page - screenPage: 2
      //home: const LessonThreeHomework(screenPage: 2,),

      //Lesson 4
      //home: const LessonFourPageOne(),
      //home: const LessonFourPageTwo(),
      //home: const LessonFourPageThree(),

      //Lesson 5
      //home: const LessonFive(),
    );
  }
}
