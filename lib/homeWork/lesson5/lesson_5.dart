import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_it_megacom/const/AppColors.dart';

class LessonFive extends StatelessWidget {
  const LessonFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppAnimatedButton(onPressed: (){}, experienceText: 'Beginner', yearText: '0-6',),
            AppAnimatedButton(onPressed: (){}, experienceText: 'Intermediate', yearText: '6-18',),
            AppAnimatedButton(onPressed: (){}, experienceText: 'Advanced', yearText: '18+',),
          ],
        ),
      ),
    );
  }
}

class AppAnimatedButton extends StatelessWidget {
  AppAnimatedButton({
    Key? key,required this.onPressed, required this.experienceText, required this.yearText ,
  }) : super(key: key);
  final Function() onPressed;
  final String experienceText;
  final String yearText;
  bool isClicked = false;

  
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTapDown: (_){
      isClicked = !isClicked;
      (context as Element).markNeedsBuild();
    },
    onTapUp: (_){
      isClicked = !isClicked;
      (context as Element).markNeedsBuild();
      onPressed();

    },
    child: AnimatedContainer(
      width: 98,
      height: 108,
      decoration: BoxDecoration(color: Colors.white, boxShadow: const [BoxShadow(color: Color.fromRGBO(0, 0, 0,0.06), offset: Offset(0,4),blurRadius: 15)],borderRadius: BorderRadius.circular(10),border: Border.all(color: isClicked? Colors.green: Colors.white, width: 3)),
      duration: const Duration(milliseconds: 300),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center, children:  [
        Text(experienceText, style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
        const SizedBox(height: 12,),
        Text(yearText, style: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
        const Text('months', style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
       
      ]),
    ),
  );
  }

  
}