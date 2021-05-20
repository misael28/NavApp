import 'package:flutter/material.dart';
import 'package:nav/second_screen.dart';
import 'package:nav/third_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
               Navigator.push(context, 
               MaterialPageRoute(builder: (context) => SecondScreen()),
               );
            },
            child: Text(
              'Second Screen'
            )),
                      ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'third', arguments: Colors.yellow);
            },
            child: Text(
              'Third Screen'
            ))
        ],
      ),
    );
  }
}