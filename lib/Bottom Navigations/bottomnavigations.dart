import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../List/ListSeparation.dart';
import '../Slivers/SliverUI1.dart';
import '../carousel_slider/CrouelSlider.dart';
import '../Validations/signupvalidation.dart';

void main() {
  runApp(MaterialApp(
    home: bottomnavi(),
  ));
}

class bottomnavi extends StatefulWidget {
  @override
  State<bottomnavi> createState() => _bottomnaviState();
}

class _bottomnaviState extends State<bottomnavi> {
  int index = 2;
  var screen = [
    sliverui(),
    carouseleg(),
    listseparate(),
    signupvalidate(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom navigations"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellow,
          currentIndex: index,
          onTap: (tabindex) {
            setState(() {
              index = tabindex;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      body: Center(child: screen[index]),
    );
  }
}
