

import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third screen"),
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
                    Navigator.pushNamed(context, "fourth");
                  }, 
                  child: Text("Fourth Screen")
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
          )),
    );
  }
}