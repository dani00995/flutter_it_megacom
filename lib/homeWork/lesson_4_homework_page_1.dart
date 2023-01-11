import 'package:flutter/material.dart';
import 'package:flutter_it_megacom/const/AppImage.dart';

class LessonFourPageOne extends StatelessWidget {
  const LessonFourPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          child: Column(
            children: [
              Image.asset(AppImage.roundBlu),
            ],
          ),
        ),
        SafeArea(
            child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.welcomePhone),
                    const RichColorTexts(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'I am a',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                )))
      ]),
    );
  }
}

class RichColorTexts extends StatelessWidget {
  const RichColorTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
            text: 'Choose You ',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff0E99D4)),
            children: [
              TextSpan(
                  text: 'BEST ', style: TextStyle(color: Color(0xffD41A0E))),
              TextSpan(text: '& ', style: TextStyle(color: Color(0xff0E99D4))),
              TextSpan(
                  text: 'SMART', style: TextStyle(color: Color(0xff5043E3))),
              TextSpan(
                  text: '\nHOUSE', style: TextStyle(color: Color(0xff0E99D4))),
            ]));
  }
}
