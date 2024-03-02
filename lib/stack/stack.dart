import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stack(),
  ));
}

class stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Container(color: Colors.red, height: double.infinity, width: double.infinity),
          Positioned(
            child: Container(color: Colors.white),
            height: 100,
            width: 100,
            left: 100,
            top: 100,
          ),
          Positioned(child: Container(color: Colors.white),height: 100, width: 100,right: 100,top: 100,),
          Positioned(child: Container(color: Colors.white,),top: 250,height: 100,width: 30,right: 230,),
          Positioned(child: Container(color: Colors.white,),top: 400,left: 150,height: 50,width: 200,),
        ],
      ),
    ));
  }
}
