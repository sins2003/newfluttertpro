import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Grid/StaggeredEg.dart';
import '../List/ListUIexample.dart';

void main() {
  runApp(MaterialApp(
    home: namedrout(),
    routes: {
      'grid': (context) => staggeredexample(),
      'List': (context) => listui(),
    },
  ));
}

class namedrout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
        child: Center(
          child: Wrap(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'grid');
                  },
                  child: Text("grid")),
              SizedBox(width: 40,),

              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'List');
                  },
                  child: Text("List"))
            ],
          ),
        ),
      ),
    );
  }
}
