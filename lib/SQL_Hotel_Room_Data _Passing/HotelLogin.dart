import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'HotalMain.dart';
import 'HotelAdmin.dart';
import 'HotelSignup.dart';
import 'HotelSqlHelper.dart';

class HotelLogin extends StatefulWidget {
  @override
  State<HotelLogin> createState() => _HotelLoginState();
}

class _HotelLoginState extends State<HotelLogin> {
  GlobalKey<FormState> formkey = GlobalKey();
  var lemail = TextEditingController();
  var lpass = TextEditingController();
  bool showpass = true;

  void LoginCheckRoom(String email, String password) async {
    if (email == "admin@gmail.com" && password == "admin123") {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HotelAdminPage(),
          ));
    } else {
      var data = await SQLHelprHotel.CheckUser(email, password);
      if (data.isNotEmpty) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HotelMainPage(data: data,),
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("LOGIN"),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text("LOGIN PAGE"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: TextFormField(
                      controller: lemail,
                      validator: (email) {
                        if (email!.isEmpty ||
                            !email.contains('.') ||
                            !email.contains('@')) {
                          return "please Enter Valid Email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "E-mail",
                          labelText: "E-mail",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      obscuringCharacter: "*",
                      obscureText: showpass,
                      controller: lpass,
                      validator: (pass) {
                        if (pass!.isEmpty || pass.length < 6) {
                          return "please enr valid password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
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
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        onPressed: () {
                          final valid = formkey.currentState!.validate();
                          if (valid) {
                            LoginCheckRoom(lemail.text, lpass.text);
                          } else {}
                        },
                        child: Text("Log In")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HotelSignUp(),
                              ));
                        },
                        child: Text("Not an user? Register here!!")),
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
