import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newfluttertpro/Assignment_Book_landind/loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: splashscreenBook(),
    debugShowCheckedModeBanner: false,
  ));
}

class splashscreenBook extends StatefulWidget {
  @override
  State<splashscreenBook> createState() => _splashscreenBookState();
}

class _splashscreenBookState extends State<splashscreenBook> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginBook()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[600],
        height: double.infinity,
        width: double.infinity,
        child: Center(child: Lottie.asset("assets/animations/book.json")),
      ),
    );
  }
}
