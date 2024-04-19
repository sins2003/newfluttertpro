import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Main.dart';

class LoginDataPass extends StatefulWidget {
  @override
  State<LoginDataPass> createState() => _LoginBookState();
}

class _LoginBookState extends State<LoginDataPass> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpas = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Data Passing",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 20)],
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            height: 400,
            width: 400,
            child: Form(
              key: formkey,
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
                        child: TextFormField(
                          validator: (name) {
                            if (name!.isEmpty) {
                              return "enter user name";
                            } else {
                              return null;
                            }
                          },
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
                        child: TextFormField(
                          obscureText: showpas,
                          obscuringCharacter: "*",
                          validator: (pass) {
                            if (pass!.isEmpty || pass.length < 6) {
                              return "pleasse enter valid pasword";
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (showpas == true) {
                                      showpas = false;
                                    } else {
                                      showpas = true;
                                    }
                                  });
                                },
                                icon: Icon(showpas == true
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              labelText: "Password",
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow),
                          onPressed: () {
                            final valid = formkey.currentState!.validate();
                            if (valid) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => datapassingmain(),
                                  ));
                            } else {}
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
      ),
    );
  }
}
