import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'HotelLogin.dart';
import 'HotelSignup.dart';


class HotelSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Hotel Rooms"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HotelLogin(),
                      ));
                },
                child: Text("Log In")),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HotelSignUp(),
                      ));
                },
                child: Text("Sing Up"))
          ],
        ),
      ),
    );
  }
}
