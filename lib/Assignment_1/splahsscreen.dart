import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginass1.dart';

void main(){
  runApp(MaterialApp(home: splashscreeen(),debugShowCheckedModeBanner: false,));
}

class splashscreeen extends StatefulWidget {
  @override
  State<splashscreeen> createState() => _splashscreeenState();
}

class _splashscreeenState extends State<splashscreeen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loginass1()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Assignment 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Center(
            child: Image(
          image: AssetImage("assets/images/CesiumLogo.png"),
              height: 100,
              width: 100,
        )),
      ),
    );
  }
}
