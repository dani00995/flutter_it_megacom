import 'package:flutter/material.dart';
import 'package:flutter_it_megacom/const/AppColors.dart';
import 'package:flutter_it_megacom/const/AppImage.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonThreeHomework extends StatefulWidget {
  final int screenPage;
  const LessonThreeHomework({super.key, required this.screenPage});

  @override
  State<LessonThreeHomework> createState() => _LessonThreeHomeworkState();
}

class _LessonThreeHomeworkState extends State<LessonThreeHomework> {
  @override
  Widget build(BuildContext context) {
    return widget.screenPage == 1 ? const OneScreen() : const TwoScreen();
  }
}

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(top: 34, right: 10, bottom: 25),
                child: Text(
                  "Skip",
                  style: textStyle(color: AppColors.greyWhite),
                )),
            Image.asset(AppImage.charcoHi),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 25),
              child: Text(
                'Welcome!',
                style: textStyle(fontSize: 41, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
                width: 262,
                height: 180,
                child: Text(
                  'There are so many things you have to experience in your life...',
                  style: textStyle(),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.only(top: 34, right: 10, bottom: 65),
                child: Text(
                  "Skip",
                  style: textStyle(color: AppColors.greyWhite),
                )),
            Image.asset(AppImage.charcoGood),
            Container(
              margin: const EdgeInsets.only(bottom: 81, top: 25),
              child: Text(
                'MyDay team',
                style: textStyle(fontSize: 41, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
                width: 330,
                height: 180,
                child: Text(
                  'prepared for you list of tasks to keep yourself busy and challenged every day, making it more fun and enjoyable',
                  style: textStyle(),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}

TextStyle textStyle(
    {double fontSize = 16,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.w400}) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontFamily: GoogleFonts.nunito().fontFamily,
  );
}
