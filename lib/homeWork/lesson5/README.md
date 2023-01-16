## Полученный результат ⚡️
<img src="https://github.com/dani00995/flutter_it_megacom/blob/master/result/gif/animateButton.gif?raw=true" width="260" height="480">

```Dart
class AppAnimatedButton extends StatelessWidget {
  AppAnimatedButton({
    Key? key,
    required this.onPressed,
    required this.experienceText,
    required this.yearText,
  }) : super(key: key);
  final Function() onPressed;
  final String experienceText;
  final String yearText;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        isClicked = !isClicked;
        (context as Element).markNeedsBuild();
      },
      onTapUp: (_) {
        isClicked = !isClicked;
        (context as Element).markNeedsBuild();
        onPressed();
      },
      child: AnimatedContainer(
        width: 98,
        height: 108,
        decoration: decoration(),
        duration: const Duration(milliseconds: 300),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textWidget(experienceText),
              const SizedBox(
                height: 12,
              ),
              textWidget(yearText, size: 24),
              textWidget('months', weight: FontWeight.w400)
            ]),
      ),
    );
  }

  //Text Widget method
  Widget textWidget(String text,
      {double size = 12, FontWeight weight = FontWeight.w600}) {
    return Text(
      text,
      style: TextStyle(color: Colors.black, fontSize: size, fontWeight: weight),
      textAlign: TextAlign.center,
    );
  }

  //Box decorotion method
  BoxDecoration decoration() {
    return BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              offset: Offset(0, 4),
              blurRadius: 15)
        ],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: isClicked ? Colors.green : Colors.white, width: 3));
  }
}
  ```