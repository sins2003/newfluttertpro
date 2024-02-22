import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listui(),
  ));
}

class listui extends StatefulWidget {
  @override
  State<listui> createState() => _listuiState();
}

class _listuiState extends State<listui> {
  var avater = ["F", "A", "I", "H", "A", "A", "A", "M", "F"];
  var name = [
    "Facebook",
    "A10 NETWORKS INC",
    "Intel Corp",
    "HP Inc",
    "Advanced Micro Devices Inc",
    "Apple Inc",
    "Amazone.com Inc",
    "Microsoft Corperation",
    "Facebook"
  ];
  var price = ["100", "200", "300", "400", "500", "600", "700", "800", "900"];
  var clr = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "List View Builder",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue[clr[index]],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  avater[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(name[index]),
              trailing: Text("\$ ${price[index]}"),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
