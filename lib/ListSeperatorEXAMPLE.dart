import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listsep1(),
  ));
}

class listsep1 extends StatelessWidget {
  var month = [
    'january',
    'february',
    'march',
    'april',
    'may',
    'june',
    'july',
    'augest',
    'september',
    'october',
    'november',
    'december'
  ];
  var adv = 'advirtisment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
              shadowColor: Colors.black,
              child: Text(month[index]),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                color: Colors.red,
                shadowColor: Colors.black,
                child: Text(
                  adv,
                  style: TextStyle(color: Colors.white),
                ),
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: month.length),
    );
  }
}
