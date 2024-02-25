import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfluttertpro/Assignment_1/loginass1.dart';

// void main() {
//   runApp(MaterialApp(
//     home: RegisterAss1(),
//   ));
// }

class RegisterAss1 extends StatefulWidget {
  @override
  State<RegisterAss1> createState() => _RegisterAss1State();
}

class _RegisterAss1State extends State<RegisterAss1> {
  GlobalKey<FormState> Fkey1 = GlobalKey();
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Assignment 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.grey,
        child: Form(
          key: Fkey1,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  "Registration",
                  style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: TextFormField(
                  validator: (name) {
                    if (name!.isEmpty) {
                      return "please enter user name";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "User Name",
                      hintText: "username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains(".")) {
                      return "please enter a valid E-mail";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      hintText: "e-mail",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: show,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "pleasee enter valid passsword";
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
                            if (show == true) {
                              show = false;
                            } else {
                              show = true;
                            }
                          });
                        },
                        icon: Icon(show == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: show,
                  validator: (conpassword) {
                    if (conpassword!.isEmpty || conpassword.length < 6) {
                      return "pleasee enter valid passsword";
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
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    final valid = Fkey1.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginass1()));
                    } else {}
                  },
                  child: Text("Register", style: GoogleFonts.bebasNeue(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
