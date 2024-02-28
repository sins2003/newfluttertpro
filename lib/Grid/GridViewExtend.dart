import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: gridviewextend(),));
}
class gridviewextend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),

        ),
        body: GridView(
          gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
          children: [
            Card(
              color: Colors.yellow,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              color: Colors.red,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              color: Colors.blue,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              color: Colors.orange,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              color: Colors.cyan,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              color: Colors.purple,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              color: Colors.pink,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              color: Colors.green,
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            )
          ],
        ));
  }
}
