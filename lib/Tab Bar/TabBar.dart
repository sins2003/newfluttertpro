import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Grid/StaggeredEg.dart';
import '../List/ListUIexample.dart';
import '../List/listbuilder.dart';
import '../stack/StackEXdetails.dart';

void main(){
  runApp(MaterialApp(home: tabbar(),));
}

class tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Example"),
          actions: [
            Icon(Icons.add),
          ],
          bottom: TabBar(unselectedLabelColor: Colors.black,
          labelColor: Colors.red,
          tabs: [
            Tab(
              child: Icon(CupertinoIcons.camera),
            ),
            Tab(
              child: Icon(CupertinoIcons.chat_bubble),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Groups"),
            ),
            Tab(
              child: Text("Contacts"),
            )
          ]),
        ),
        body: TabBarView(children: [
          Text("Camera"),
          staggeredexample(),
          staceg(),
          listui(),
          Listbuilder()
        ]),
      ),
    );
  }
}
