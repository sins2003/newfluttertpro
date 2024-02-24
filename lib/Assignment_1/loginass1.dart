import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfluttertpro/Assignment_1/HomeAss1.dart';

void main() {
  runApp(MaterialApp(
    home: loginass1(),
  ));
}

class loginass1 extends StatefulWidget {
  @override
  State<loginass1> createState() => _loginass1State();
}

class _loginass1State extends State<loginass1> {
  GlobalKey<FormState> formkeylogin = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Assignment 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Form(
          key: formkeylogin,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "LOGIN PAGE",
                  style: GoogleFonts.oswald(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30, right: 30),
                child: TextFormField(
                  validator: (name) {
                    if (name!.isEmpty) {
                      return "Pleasee enter user name";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "User Name",
                      hintText: "username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Please enter valid password";
                    } else {
                      return null;
                    }
                  },

                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                         setState(() {
                           if (showpass == true) {
                             showpass = false;
                           } else {
                             showpass = true;
                           }
                         });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    final valid = formkeylogin.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeAss()));
                    }
                  },
                  child: Text(
                    "Log in",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextButton(
                    onPressed: () {},
                    child: Text("Not an user? Create an account")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
