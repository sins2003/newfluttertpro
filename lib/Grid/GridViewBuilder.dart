import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridviewbuilder(),
  ));
}

class gridviewbuilder extends StatelessWidget {
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
  var icone=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Builder'),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Image(image: AssetImage(img[index]),height: 50,width: 50,),
                  Text(name[index]),
                  Icon(Icons.call)
                ],
              ),
            );
          },itemCount: name.length,),
    );
  }
}
