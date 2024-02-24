import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listbuilder(),
  ));
}

class Listbuilder extends StatefulWidget {
  @override
  State<Listbuilder> createState() => _ListbuilderState();
}

class _ListbuilderState extends State<Listbuilder> {
  var name = ["sins", "sanjay", "bindya", "nishin", "sahal"];
  var img = [
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png"
  ];
  var phone = [
    '1111111111',
    '222222222',
    '333333333',
    '4444444444',
    '55555555'
  ];
  var color = [Colors.blue, Colors.red, Colors.yellow, Colors.cyan,Colors.green];
  var clr=[900,700,500,300,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: Colors.yellow[clr[index]],
            child: Row(
              children: [
                Container(color: Colors.red,
                child: Text("fgdfg"),),
                Container(color: Colors.red,
                child: Text("xfg"),),

              ],
            )
          );
        },
        itemCount: 5,
      ),
    );
  }
}
