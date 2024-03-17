import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: flexeg(),));
}

class flexeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Flexible(child: Container(color: Colors.red),flex: 1,),
            Flexible(child: Container(color: Colors.blue),flex: 4,),
            Flexible(child: Container(color: Colors.yellow),flex: 3,)
          ],
        ),
      ),
    );
  }
}