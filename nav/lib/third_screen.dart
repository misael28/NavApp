

import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = ModalRoute.of(context).settings.arguments; 
    return Scaffold(
      backgroundColor: color ?? Colors.black,
      appBar: AppBar(
        title: Text("Third screen"),
        ),
        body: SafeArea(
          child: 
          Center(
            child: 
            Container(
              color: Colors.black,
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