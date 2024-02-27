import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewCustome(),
  ));
}

class ListViewCustome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate(
              //     [
              //       //methode 1
              //   Card(
              //     child: Text('hey'),
              //     color: Colors.cyan,
              //   ),
              //   Card(
              //     child: Text('hey'),
              //     color: Colors.cyan,
              //   ),
              //   Card(
              //     child: Text('hey'),
              //     color: Colors.cyan,
              //   ),
              //   Card(
              //     child: Text('hey'),
              //     color: Colors.cyan,
              //   )
              // ],
            // method 2
              List.generate(
                  4,
                  (index) => Card(
                        child: Text("hiu"),
                    color: Colors.cyan,
                      )))),
    );
  }
}
