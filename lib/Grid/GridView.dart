import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home: gridview(),));
}
class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),

        ),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: [
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            ),
            Card(
              child: Column(
                children: [Text('Grid'), Icon(Icons.browse_gallery)],
              ),
            )
          ],
        ));
  }
}
