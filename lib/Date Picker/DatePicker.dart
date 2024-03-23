import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: datepicker(),));
}

class datepicker extends StatefulWidget {
  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  DateTime selectdate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextField(
        readOnly: true,
        onTap: () => selectDate(context),
        controller: TextEditingController(text: "${selectdate.toLocal()}".split(" ")[0]),
        decoration: InputDecoration(
            hintText: "select date", suffixIcon: Icon(CupertinoIcons.calendar)),
      )),
    );
  }
  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickerdate = await showDatePicker(
        context: context, firstDate: DateTime(2020), lastDate: DateTime(2030));
    if (pickerdate != null && pickerdate != selectDate) {
      setState(() {
        selectdate=pickerdate;
      });
    }
  }
}


