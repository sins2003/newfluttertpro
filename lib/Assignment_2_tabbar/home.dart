import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Grid/GridViewBuilderExample.dart';
import '../List/listbuilder.dart';

void main() {
  runApp(MaterialApp(
    home: MainPageUi(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainPageUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.green[700], fontWeight: FontWeight.w800),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(CupertinoIcons.camera),
            ),
            Icon(CupertinoIcons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            })
          ],
          bottom: TabBar(tabs: [
            Icon(
              Icons.people_alt_outlined,
              color: Colors.black,
            ),
            Text("Chats"),
            Text("Updates"),
            Text("Calls"),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("Community")),
          ListView.builder(
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      )),
                  title: Text(
                    "sins",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text("Hi"),
                  trailing: Text(
                    "10:50 am",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              );
            },
            itemCount: 20,
          ),
          gridviewbuilderexample(),
          Listbuilder(),
        ]),
      ),
    );
  }
}
