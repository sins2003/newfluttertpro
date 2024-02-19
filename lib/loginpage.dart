import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/signup.dart';

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
                image: AssetImage("assets/images/game.png"),
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
                    prefixIcon: Icon(Icons.person_2),
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
                    prefixIcon: Icon(Icons.password_sharp),
                    suffixIcon: Icon(Icons.visibility_off_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w300))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signup()));
                  },
                  child: Text("Not an user,create an account")),
            )
          ],
        ),
      ),
    );
  }
}
