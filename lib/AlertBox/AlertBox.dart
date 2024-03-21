import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: alertbox(),));
}

class alertbox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, builder: (context) {
            return AlertDialog(title: Text("Exit!!!"),
            content: Text("Do you want to exit"),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text("Yes")),
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text("No")),
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text("Cancel"))
            ],);
          },);
        }, child: Text("Alert"),),
      ),
    );
  }
}