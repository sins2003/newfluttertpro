import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/SQL%20Hotel%20Room%20Data%20Passing/HotelLogin.dart';
import 'package:newfluttertpro/SQL%20Hotel%20Room%20Data%20Passing/HotelSplash.dart';
import 'package:newfluttertpro/SQL%20Hotel%20Room%20Data%20Passing/HotelSqlHelper.dart';

void main() {
  runApp(MaterialApp(
    home: HotelSignUp(),
  ));
}

class HotelSignUp extends StatefulWidget {
  @override
  State<HotelSignUp> createState() => _HotelSignUpState();
}

class _HotelSignUpState extends State<HotelSignUp> {
  bool show1 = true;
  bool show2 = true;
  GlobalKey<FormState> formkey = GlobalKey();
  var conname = TextEditingController();
  var conemail = TextEditingController();
  var conpass = TextEditingController();
  var conpass2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void AddUser(String name, String email, String password) async {
      var id = await SQLHelprHotel.AddNewUser(name, email, password);
      if (id != null) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HotelLogin(),
            ));
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HotelSplash(),
            ));
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("SIGN UP"),
      ),
      body: Center(
        child: Container(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'REGISTRATION',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: conname,
                    decoration: InputDecoration(
                        hintText: "Name",
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: TextFormField(
                    controller: conemail,
                    validator: (email) {
                      if (email!.isNotEmpty ||
                          !email.contains('@') ||
                          !email.contains('.')) {
                        return "Please entr valid email";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "E-mail",
                        hintText: "E-mail",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: TextFormField(
                    controller: conpass,
                    obscureText: show1,
                    obscuringCharacter: '*',
                    validator: (pass1) {
                      if (pass1!.isNotEmpty || pass1.length > 6) {
                        return "Please enter valid password";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Passord",
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
                              : Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: TextFormField(
                    controller: conpass2,
                    obscuringCharacter: '*',
                    obscureText: show2,
                    validator: (pass2) {
                      if (pass2!.isNotEmpty || pass2.length > 6) {
                        return "please enter valid password";
                      } else if (conpass.text != conpass2.text) {
                        return "Password Not Match";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        hintText: "Confirm Passord",
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
                              : Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        String vemail = conemail.text;
                        var data = await SQLHelprHotel.UserSearch(vemail);
                        if (data.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("User Already Exist!!!!!")));
                        } else {
                          AddUser(conname.text, conemail.text, conpass.text);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Account Created Successfully")));
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Invalid Username Or password"),
                          action: SnackBarAction(
                            label: "UNDO",
                            onPressed: () { },
                          ),
                        ));
                      }
                    },
                    child: Text("SIGN UP")),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HotelLogin(),
                          ));
                    },
                    child: Text("Already Have Account? LOG IN here"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
