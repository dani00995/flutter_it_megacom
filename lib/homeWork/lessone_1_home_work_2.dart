import 'package:flutter/material.dart';

class LessoneOneHomeWorkTwo extends StatefulWidget {
  const LessoneOneHomeWorkTwo({super.key});

  @override
  State<StatefulWidget> createState() => _LessoneOne();
}

class _LessoneOne extends State<LessoneOneHomeWorkTwo> {
  Widget widgetAdd() {
    return Container(
      margin: const EdgeInsets.all(10),
      color: const Color.fromARGB(255, 180, 110, 5),
      width: 80,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.add,
            color: Colors.black45,
          ),
          Text("Add")
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sample App")),
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
                child:  Center(
                  child: Text(
              "image",
              textAlign: TextAlign.center,
            ),
                )),
            Container(
              color: Colors.green,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              
                child: Row(

              
                  children: [
                    widgetAdd(),
                    widgetAdd(),
                    widgetAdd(),
                    widgetAdd(),
                    widgetAdd(),
                    widgetAdd(),
                    widgetAdd(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
