import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonFourButton extends StatelessWidget {
  const LessonFourButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 35),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                fontFamily: GoogleFonts.poppins().fontFamily)),
      ),
    );
  }
}
