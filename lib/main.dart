import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _infos = {'totalScore': 0, 'questionIndex': 0};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for Navigator',
      initialRoute: '/quiz',
      routes: <String, WidgetBuilder>{
        '/quiz': (BuildContext context) => Quiz(_infos),
        '/result': (BuildContext context) => Result(_infos),
      },
    );
  }
}
