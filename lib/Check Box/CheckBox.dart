import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: checkbox(),));
}

class checkbox extends StatefulWidget {
  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked=value!;
          });
        },
      )),
    );
  }
}
