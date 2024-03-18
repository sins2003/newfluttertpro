import 'package:bottom_bar_matu/utils/app_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: dismisable(),
  ));
}

class dismisable extends StatelessWidget {
  var data = ['data1', 'data2', 'data3', 'data4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(

              background: Container(
                color: Colors.cyan,
              ),
              secondaryBackground: Container(
                color: Colors.red,
              ),
              key: ValueKey(data),
              child: Center(
                child: ListTile(title: Center(child: Text(data[index]))),
              ));
        },
        itemCount: data.length,
      ),
    );
  }
}
