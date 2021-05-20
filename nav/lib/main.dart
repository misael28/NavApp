import 'package:flutter/material.dart';
import 'package:nav/fourth_screen.dart';
import 'package:nav/second_screen.dart';
import 'package:nav/third_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nav pages",
      home: HomeScreen(),
      routes: {
        'home': (context) => HomeScreen(),
        'second': (context) => SecondScreen(),
        'third' : (context) => ThirdScreen(),
        'fourth' : (context) => FourthScreen(dados: ThisArguments('nome',12),)
      },
    );
  }
}