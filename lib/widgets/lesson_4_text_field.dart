import 'package:flutter/material.dart';

class LessonFourTextField extends StatelessWidget {
  const LessonFourTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35),
      width: double.infinity,
      height: 50,
      child: Center(
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: 0, horizontal: 20),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100)),
              hintText: 'Enter your phone number',
              hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        ),
      ),
    );
  }
}