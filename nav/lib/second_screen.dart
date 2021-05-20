import "package:flutter/material.dart";
import 'package:nav/fourth_screen.dart';
import 'package:nav/third_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen")
      ),
      body: SafeArea(
        child: 
        Center(
          child:
          Container(
            child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
               Navigator.pushNamed(
                 context, 'third',
                 arguments: Colors.red, 
                 );
            },
            child: Text(
              'Third Screen'
            )),
                      ElevatedButton(
            onPressed: () {
               Navigator.push(context, 
               MaterialPageRoute(builder: (context) => FourthScreen(
                 dados: ThisArguments('nome',12),)),
               );
            },
            child: Text(
              'Fourth Screen'
            ))
        ],
      ),
    )
        )
        ),
    );
  }
}