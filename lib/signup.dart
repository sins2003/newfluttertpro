import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/loginpage.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image(
                image: AssetImage("assets/images/sign up.png"),
                height: 200,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: "username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "e-mail",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "confirm password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                child: Text("Sign Up"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
