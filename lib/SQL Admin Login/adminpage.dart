import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class adminpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(backgroundColor:Colors.yellow[700],title: Text("ADMIN"),),
      body: Container(child: ListView.builder(itemBuilder: (context, index) {
        return Card(
          child: ListTile(title: Text("E-MAIL : "),
          subtitle: Text("Password :"),),
        );
      },),),
    );
  }
}