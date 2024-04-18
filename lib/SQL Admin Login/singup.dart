import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/login.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/spash.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/sqlhelper.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/userpage.dart';

class singup extends StatefulWidget {
  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  bool show1 = true;
  bool show2 = true;
  GlobalKey<FormState> formkey = GlobalKey();
  var conname = TextEditingController();
  var conemial = TextEditingController();
  var pass = TextEditingController();
  var conpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void Adduser(String name, String email, String password) async {
      var id = await sqlhelpeeradmin.AddNewUser(name, email, password);
      if (id != null) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => login(),
            ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => splash(),
            ));
      }
    }

    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text(
          "SIGN UP PAGE",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                child: TextFormField(
                  controller: conname,
                  validator: (name) {
                    if (name!.isEmpty) {
                      return 'please enter valid user name';
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "NAME",
                      prefixIcon: Icon(FontAwesomeIcons.user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  controller: conemial,
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains('@') ||
                        !email.contains('.')) {
                      return "please enter valid email";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      hintText: "E mail",
                      labelText: "E-MAIL",
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  controller: pass,
                  obscuringCharacter: "*",
                  obscureText: show1,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "password is invalid";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      hintText: "password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (show1 == true) {
                                show1 = false;
                              } else {
                                show1 = true;
                              }
                            });
                          },
                          icon: Icon(show1 == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  controller: conpass,
                  obscuringCharacter: "*",
                  obscureText: show2,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "please enter valid password";
                    } else if (pass.text != conpass.text) {
                      return "password not match";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      labelText: "CONFIRM PASSWORD",
                      hintText: "confirm password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (show2 == true) {
                                show2 = false;
                              } else {
                                show2 = true;
                              }
                            });
                          },
                          icon: Icon(show2 == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () async {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        String uemail = conemial.text;
                        var data = await sqlhelpeeradmin.UserFound(uemail);
                        if (data.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("User Already exist")));
                        } else {
                          Adduser(conname.text, conemial.text, pass.text);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Account Created succesessfully")));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Invalid Username or password"),
                          action: SnackBarAction(
                            label: 'UNDO',
                            onPressed: () {},
                          ),
                        ));
                      }
                    },
                    child: Text("Sign Up")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login(),
                          ));
                    },
                    child: Text("You have already account? LOGIN here")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
