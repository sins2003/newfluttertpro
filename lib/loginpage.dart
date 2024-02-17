import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image(
                image: AssetImage("assets/images/game png.png"),
                height: 100,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                    hintText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 70, left: 70),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(onPressed: () {}, child: Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text("Not an user,create an account")),
            )
          ],
        ),
      ),
    );
  }
}
