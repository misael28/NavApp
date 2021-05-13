

import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth screen"),
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
                  onPressed: (){
                    Navigator.pushNamed(context, "third");
                  }, 
                  child: Text("third screen")
                  ),
                  ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "home");
                  }, 
                  child: Text("Back")
                  )
                ],
              ),
            ),
            ),
          ));
  }
}