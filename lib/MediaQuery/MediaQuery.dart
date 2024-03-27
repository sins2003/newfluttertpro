import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: mediaquery(),));
}

class mediaquery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*2.5,
            color: Colors.red,
          ),
          Container(
            height: MediaQuery.of(context).size.height*7.5,
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }

}