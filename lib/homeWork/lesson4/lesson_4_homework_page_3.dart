import 'package:flutter/material.dart';
import 'package:flutter_it_megacom/const/AppImage.dart';
import 'package:flutter_it_megacom/widgets/lesson_4_button.dart';
import 'package:flutter_it_megacom/widgets/lesson_4_text_field.dart';

class LessonFourPageThree extends StatelessWidget {
  const LessonFourPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Stack(children: [
            Image.asset(AppImage.roundBlu),
          Positioned(
              top: 53,
              left: 24,
              child: IconButton(
                icon: Image.asset(AppImage.backBlue),
                onPressed: () {
                  Navigator.pop(context);
                },
              ))
          ],),
        ),
        
        const Text(
          'SIGN UP',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        const SizedBox(
          width: double.infinity,
          height: 80,
          child: Center(
            child: Text(
              'Just entry your personal details',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 9, bottom: 20),
          child: const LessonFourTextField(
            hintText: 'Enter your full name',
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 9, bottom: 20),
          child: const LessonFourTextField(
            hintText: 'Enter your email',
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 9, bottom: 20),
          child: const LessonFourTextField(
            hintText: 'Enter  passowrd ',
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 9, bottom: 20),
          child: const LessonFourTextField(
            hintText: 'Comfirm password',
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 50),
            child: LessonFourButton(
                text: 'Continue', onPressed: () {})),
        const SizedBox(
          height: 30,
        ),
        
      ]),
    );
    ;
  }
}
