import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flow Widget Example'),
        ),
        body: Flow(
          delegate: CustomFlowDelegate(),
          children: [
            Container(width: 50, height: 50, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.green),
            Container(width: 50, height: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class CustomFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0;
    double y = 0;

    for (int i = 0; i < context.childCount; i++) {
      var childSize = context.getChildSize(i);

      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0),
      );

      x += (childSize!.width + 10)!; // Add spacing between children
      if (x >= context.size.width) {
        x = 0;
        y += (childSize!.height + 10)!; // Add spacing between rows
      }
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}
