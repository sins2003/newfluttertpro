import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userpage extends StatelessWidget {
  final data;

  userpage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = data[0]['name'];
    var email = data[0]['email'];
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
          title: Text("welcome $name"), backgroundColor: Colors.yellow[700]),
      body: Container(
        child: Center(
          child: Text("Welcome $name ($email)"),
        ),
      ),
    );
  }
}
