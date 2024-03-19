import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfluttertpro/Assignment_Book_landind/mainbook.dart';

void main() {
  runApp(MaterialApp(
    home: LoginBook(),
  ));
}

class LoginBook extends StatefulWidget {
  @override
  State<LoginBook> createState() => _LoginBookState();
}

class _LoginBookState extends State<LoginBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "BooK Store",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow[100],
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 20)],
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            height: 400,
            width: 400,
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Login Page",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                )),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                            labelText: "UserName",
                            hintText: "username",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: Icon(Icons.visibility_off),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => mainbook(),));
                        },
                        child: Text(
                          "Log In",
                          style: GoogleFonts.bebasNeue(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
