import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/Data%20Passing/2ndscreen.dart';
import 'package:newfluttertpro/Data%20Passing/Splash.dart';
import 'package:newfluttertpro/Data%20Passing/datas.dart';

void main() {
  runApp(MaterialApp(
    home: datapassingmain(),
    routes: {'secondpage': (context) => productdetail()},
  ));
}

class datapassingmain extends StatefulWidget {
  @override
  State<datapassingmain> createState() => _datapassingmainState();
}

class _datapassingmainState extends State<datapassingmain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: DummyDatas.map((product) => GestureDetector(
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Text("${product["name"]}"),
                      Image(
                        image: AssetImage("${product["image"]}"),
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
              onTap:() => (),
            )).toList(),
      ),
    );
  }
}
