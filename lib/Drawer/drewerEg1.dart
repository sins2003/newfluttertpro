import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drewereg1(),
    debugShowCheckedModeBanner: false,
  ));
}

class drewereg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drewer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("SinS"),
              accountEmail: Text("ssin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.png"),
              ),
              otherAccountsPictures: [Icon(Icons.person), Icon(Icons.person)],
              decoration: BoxDecoration(color: Colors.red),
            )
          ],
        ),
      ),
      body: Center(child: Text("welcome")),
    );
  }
}
