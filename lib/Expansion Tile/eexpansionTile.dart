import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: expaansion(),));
}
class expaansion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(iconColor: Colors.blue,
            title: Text("Colorss"),subtitle: Text("Typee of colors"),children: [
            ListTile(leading: CircleAvatar(backgroundColor: Colors.red,)),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,)),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,)),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.black,)),
            ListTile(leading: CircleAvatar(backgroundColor: Colors.orange,)),
          ],)
        ],
      ),
    );
  }
}