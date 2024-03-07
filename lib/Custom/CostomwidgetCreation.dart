import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/loginpage.dart';

import 'CustomWidget.dart';

void main() {
  runApp(MaterialApp(
    home: custeg(),
  ));
}

class custeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: customwid(
          txt: Text("Hey Bruuuu"),
          onpress: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => login()));
          },
          img: Image.asset("assets/images/peace.png"),
          clr: Colors.red,
          discription: Text("Endhaa bro modayaano"),
        ),
      ),
    );
  }
}
