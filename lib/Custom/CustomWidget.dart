import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customwid extends StatelessWidget {
  final Text txt;
  final Image ? img;
  final Color ? clr;
  final Text ? discription;
  VoidCallback onpress;
  customwid({this.img,required this.txt,required this.onpress,this.discription, this.clr});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListTile(
          leading: img,
          title: txt,
          subtitle:discription,
          onTap: onpress,
        ),
      ),
    );
  }
}