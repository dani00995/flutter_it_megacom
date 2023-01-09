import 'package:flutter/material.dart';

class LessoneTwoHomeWork extends StatefulWidget {
  const LessoneTwoHomeWork({super.key});

  @override
  State<StatefulWidget> createState() => _LessonTwo();
}

class _LessonTwo extends State<LessoneTwoHomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ItemView(
                icon: Icons.calculate,
                title: 'Current Weight',
                measur: '--- kgs',
              ),
              ItemView(
                  icon: Icons.calculate,
                  title: 'Target Weight',
                  measur: '--- kgs'),
              ItemView(
                icon: Icons.rule,
                title: 'Height',
                measur: '--- cms',
              )
            ]),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  final IconData icon;
  final String title;
  final String measur;
  const ItemView({
    Key? key,
    required this.icon,
    required this.title,
    required this.measur,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: const Color(0x66000000),
                offset: Offset(0, 4),
                blurRadius: 15)
          ]),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ))),
          Text(
            measur,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff898A8D)),
          )
        ],
      ),
    );
  }
}
