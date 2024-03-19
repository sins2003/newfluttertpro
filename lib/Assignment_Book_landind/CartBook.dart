import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartBook extends StatefulWidget{
  @override
  State<CartBook> createState() => _CartBookState();
}

class _CartBookState extends State<CartBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("cart"),
    );
  }
}