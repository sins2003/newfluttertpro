import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hadmineg extends StatelessWidget {
  final String email;

  Hadmineg({Key? key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome $email",
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
    );
  }
}
