import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: ListView(
        children: [
          Card(
            color: Colors.cyan,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/game.png"),
              ),
              title: Text("sins"),
              subtitle: Text("123456789"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.cyan,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/game.png"),
              ),
              title: Text("sanju"),
              subtitle: Text("123456789"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.cyan,
            shadowColor: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/game.png"),
              ),
              title: Text("arun"),
              subtitle: Text("123456789"),
              trailing: Icon(Icons.call),
            ),
          )
        ],
      ),
    );
  }
}
