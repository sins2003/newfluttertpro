import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: backpress(),debugShowCheckedModeBanner: false));
}

class backpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showdialogop() async{
      return await showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text("Exit!!!!"),
          content: Text("Do you want to exit"),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("Yes")),
            TextButton(onPressed: () {
              Navigator.of(context).pop();
            }, child: Text("")),
          ],
        );
      },);
    }
    return WillPopScope(onWillPop: showdialogop,
    child: Scaffold());
  }
}