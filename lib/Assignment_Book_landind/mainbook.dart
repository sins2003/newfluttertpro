import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/Assignment_Book_landind/CartBook.dart';
import 'package:newfluttertpro/Assignment_Book_landind/homepagebook.dart';

import 'ProfileBook.dart';

class mainbook extends StatefulWidget {
  @override
  State<mainbook> createState() => _mainbookState();
}

class _mainbookState extends State<mainbook> {
  int index = 0;

  var screen = [homebook(), CartBook(), ProffileBook()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow[600],
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (tabindex) {
          setState(() {
            index = tabindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Center(child: screen[index]),
    );
  }
}
