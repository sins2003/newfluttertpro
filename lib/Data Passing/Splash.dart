import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


import 'LoginDataPass.dart';

void main(){
  runApp(MaterialApp(home:splashDataPaass(),));
}

class splashDataPaass extends StatefulWidget{
  @override
  State<splashDataPaass> createState() => _splashDataPaassState();
}

class _splashDataPaassState extends State<splashDataPaass> {
  void initState(){
    Timer(Duration(seconds: 5), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  LoginDataPass(),)); });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        height: double.infinity,
        width: double.infinity,
        child: Center(child: Lottie.asset("assets/animations/DaataPassing.json")),

      ),
    );
  }
}