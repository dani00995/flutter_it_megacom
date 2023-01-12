import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_it_megacom/const/AppImage.dart';
import 'package:flutter_it_megacom/homeWork/lesson_4_homework_page_3.dart';
import 'package:flutter_it_megacom/widgets/lesson_4_button.dart';
import 'package:flutter_it_megacom/widgets/lesson_4_text_field.dart';

class LessonFourPageTwo extends StatelessWidget {
  const LessonFourPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        SafeArea(
            child: SizedBox(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Text(
                        'Welcome Onbord!',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 24),
                        child: Text(
                          'Let’s help you meet up your best tenant \nor landlord',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: const Text(
                          'Log in or sign up',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      const LessonFourTextField(
                        hintText: 'Enter your phone number',
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: LessonFourButton(
                              text: 'Continue',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (builder) =>
                                            const LessonFourPageThree()));
                              })),
                      const Text("or",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppImage.roundGoogle),
                            Image.asset(AppImage.roundOption),
                          ],
                        ),
                      ),
                      const Text(
                          "By continuing, you agree to our\nTerms of Service Privacy Policy\nContent Policy",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      const SizedBox(
                        height: 48,
                      )
                    ]))),
        SizedBox(
          child: Column(
            children: [
              Image.asset(AppImage.roundBlu),
            ],
          ),
        ),
        Positioned(
            top: 53,
            left: 24,
            child: IconButton(
              icon: Image.asset(AppImage.backBlue),
              onPressed: () {
                Navigator.pop(context);
              },
            ))
      ]),
    );
  }
}
