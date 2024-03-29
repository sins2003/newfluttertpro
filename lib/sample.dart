import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(DevicePreview(
    isToolbarVisible: true,
    builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: sample()),
  ));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "welcome",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.jpg"), fit: BoxFit.fill)),
        // decoration: BoxDecoration(gradient: LinearGradient(colors: [
        // Colors.blue,
        // Colors.yellow,
        // Colors.blue,
        // ]
        // ,begin: Alignment.bottomCenter
        // ,end: Alignment.topCenter)),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.ice_skating_sharp,
              color: Colors.black,
              size: 50,
            ),
            Image(image: AssetImage("assets/images/game.png")),
            Text(
              "flutter",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
