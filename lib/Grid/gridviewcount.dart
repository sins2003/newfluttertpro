import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridviewcount(),));
}

class gridviewcount extends StatelessWidget {
  var img = [
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png",
    "assets/images/game.png"
  ];
  var name = ['sins', 'sanjay', 'sahal', 'nishin', 'bindya', 'rahul'];
  var clr = [
    Colors.green,
    Colors.cyan,
    Colors.grey,
    Colors.red,
    Colors.brown,
    Colors.teal
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(6, (index) {
          return Card(
              color: clr[index],
              child: Column(
                children: [
                  Image(
                    image: AssetImage(img[index]),height: 50,width: 50,
                  ),
                  Text(name[index]),
                ],
              ));
        }),
      ),
    );
  }
}
