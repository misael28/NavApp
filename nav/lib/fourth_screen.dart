

import 'package:flutter/material.dart';
class FourthScreen extends StatelessWidget {
  final ThisArguments dados;

  const FourthScreen({Key key, this.dados}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth screen"),
        ),
        body: SafeArea(
          child: 
          Column(
            children: [
              Container(
                child: Row(
                  children: [ 
                    Text(dados.nome),
                    Text('${dados.idade}')
                    ],
              ),
              ),
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
            ],
          ),
          ));
  }
}

class ThisArguments {
 final String nome;
 final int idade;

  ThisArguments(this.nome, this.idade);
}