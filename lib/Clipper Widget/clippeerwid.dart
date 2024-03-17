import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: cliperwidg(),
  ));
}

class cliperwidg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: ClipRect(
              child: Image(
                  image: NetworkImage(
                      "https://tse2.mm.bing.net/th?id=OIP.ensiLtlsMoQxpqIoO-IyYgHaEo&pid=Api&P=0&h=180")),
            ),
          ),
          Container(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(360),
            child: Image(
              image: AssetImage("assets/images/bg1.jpg"),
            ),
          )),
          Container(
            child: ClipOval(
              child: Image(image: AssetImage("assets/images/bg1.jpg"),),),
          )
        ],
      ),
    );
  }
}
