import 'package:flutter/material.dart';

class LessoneOneHomeWork extends StatefulWidget{
  const LessoneOneHomeWork({super.key});

  @override
  State<StatefulWidget> createState()=> _LessoneOne();

}

class _LessoneOne extends State<LessoneOneHomeWork>{
  Widget myColumn(double marginTop){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
              children: [          
                Container(
                  margin: EdgeInsets.only(top: marginTop),
                  width: 60,
                  height: 60,
                  color: Colors.red,
                  child: const Center(child: Text("1")),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                  child: const Center(child: Text("2")),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: const Center(child: Text("3")),
                )
              ],
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("First Screen of My apl"), centerTitle: true,),
      body: Container(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myColumn(10),
            myColumn(140),
            myColumn(260)
            
          ],
        ),
      ),
    );
  }

}