import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfluttertpro/loginpagewithvalidation.dart';

import 'homepage.dart';

class signupvalidate extends StatefulWidget {
  @override
  State<signupvalidate> createState() => _signupvalidateState();
}

class _signupvalidateState extends State<signupvalidate> {
  bool show = true;
  GlobalKey<FormState> Formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Form(
          key: Formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  "Registration",
                  style: GoogleFonts.acme(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 50,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  validator: (name){
                    if(name!.isEmpty){
                      return "enter username";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Useer Name",
                      hintText: "username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains('@') ||
                        !email.contains('.')) {
                      return "please enter valid email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      hintText: "e-mail",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: show,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "password is invalid";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "paassword",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (show == true) {
                                show = false;
                              } else {
                                show = true;
                              }
                            });
                          },
                          icon: Icon(show == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: show,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "please enter valid password";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      hintText: "confirm password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (show == true) {
                                show = false;
                              } else {
                                show = true;
                              }
                            });
                          },
                          icon: Icon(show == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    final valid = Formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginpagewithvalidation()));
                    } else {}
                  },
                  child: Text("Register"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
