import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListViewCustome2(),));
}

class ListViewCustome2 extends StatelessWidget{
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
  // var color = [Colors.blue, Colors.red, Colors.yellow, Colors.cyan,Colors.green];
  var clr=[900,700,500,300,100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Card(
          color: Colors.red[clr[index]],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(img[index]),),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: SizedBox(child: Wrap(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete))
              ],
            ),),
          ),
        );
      },childCount: name.length))
    );
  }
}