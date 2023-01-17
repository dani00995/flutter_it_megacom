import 'package:flutter/material.dart';

class LessoneTwoHomeWork extends StatefulWidget {
  const LessoneTwoHomeWork({super.key});

  @override
  State<StatefulWidget> createState() => _LessonTwo();
}

class _LessonTwo extends State<LessoneTwoHomeWork> {
  bool _isClicked1 = false;
  bool _isClicked2= false;
  bool _isClicked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTapDown: (_) {
              _isClicked1 = true;
              setState(() {});
            },
            onTapUp: (_) {
              _isClicked1 = false;
              setState(() {});
            },
            child: ItemView(
              icon: Icons.calculate,
              title: 'Current Weight',
              measur: '--- kgs',
              isClicked: _isClicked1,
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _isClicked2= true;
              setState(() {});
            },
            onTapUp: (_) {
              _isClicked2= false;
              setState(() {});
            },
            child: ItemView(
              icon: Icons.calculate,
              title: 'Target Weight',
              measur: '--- kgs',
              isClicked: _isClicked2,
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _isClicked3 = true;
              setState(() {});
            },
            onTapUp: (_) {
              _isClicked3 = false;
              setState(() {});
            },
            child: ItemView(
              icon: Icons.rule,
              title: 'Height',
              measur: '--- cms',
              isClicked: _isClicked3,
            ),
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
  final bool isClicked;
  const ItemView({
    Key? key,
    required this.icon,
    required this.title,
    required this.measur,
    required this.isClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      curve: Curves.easeInCubic,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: !isClicked ? const Color(0x66000000) : Colors.red,
                offset: Offset(0, 4),
                blurRadius: 15)
          ]),
      margin: EdgeInsets.symmetric(
          horizontal: isClicked ? 40 : 30, vertical: isClicked ? 10 : 5),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: isClicked ? 40 : 48,
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
