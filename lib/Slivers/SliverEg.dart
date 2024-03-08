import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: slivereg(),
    debugShowCheckedModeBanner: false,
  ));
}

class slivereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var clr = [100, 200, 300, 400, 500, 600, 700, 600, 500, 400, 300, 200, 100];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.red,
            title: Text("App Bar"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.cart)),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings))
            ],
            bottom: AppBar(
              backgroundColor: Colors.red,
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  color: Colors.blue[50],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search",
                      prefixIcon: Icon(CupertinoIcons.search),
                      suffixIcon: Icon(CupertinoIcons.camera)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: Colors.green[clr[index]],
              child: Container(
                height: 100,
              ),
            );
          }, childCount: clr.length))
        ],
      ),
    );
  }
}
