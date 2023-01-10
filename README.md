# Мои курсы по Flutter (IT school MEGACOM)

Пооект содержит практические работы сделанные мной во время обучение.

## Getting Started

Каждая задача было разделено на отделные классы. Что бы посмотреть результат, нужно изменить в [main.dart](https://github.com/dani00995/flutter_it_megacom/blob/master/lib/main.dart) классе `home:`, на выбраннный Вами класс.

``` dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      //HOME WORK
      //Lesson 1
      //home: const LessoneOneHomeWork(),
      //home: const LessoneOneHomeWorkTwo(),

      //Lesson 2
      //home: const LessoneTwoHomeWork(),

      //Lesson 3
      //One Screen page - screenPage: 1
      //Two Screen page - screenPage: 2
      home: const LessonThreeHomework(screenPage: 2,),
    );
  }
}
```


