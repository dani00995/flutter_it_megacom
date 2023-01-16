## Полученный результат ⚡️
<img src="https://github.com/dani00995/flutter_it_megacom/blob/master/result/gif/animateButton.gif?raw=true" width="240" height="480">

```Dart
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
  ```