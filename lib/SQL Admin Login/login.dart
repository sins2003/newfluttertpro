import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/adminpage.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/singup.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/sqlhelper.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/userpage.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var coemail = TextEditingController();
  var copass = TextEditingController();

  void LoginCheck(String email, String password) async {
    if (email == 'admin@gmail.com' && password == 'admin123') {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => adminpage(),
          ));
    } else {
      var data = await sqlhelpeeradmin.CheckLogin(email, password);
      if(data.isNotEmpty){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => userpage(data: data),));
      }
    }
  }

  bool showpass = true;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text(
          "LOGIN PAGE",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            height: 500,
            width: 450,
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "LOG IN",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 30, right: 30),
                    child: TextFormField(
                      controller: coemail,
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
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          suffixIcon: Icon(Icons.person)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: TextFormField(
                      controller: copass,
                      obscuringCharacter: "*",
                      obscureText: showpass,
                      validator: (password) {
                        if (password!.isEmpty || password.length < 6) {
                          return "please enter valid password";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "password",
                          labelText: "PASSWORD",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
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
                            LoginCheck(coemail.text, copass.text);
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
                                builder: (context) => singup(),
                              ));
                        },
                        child: Text("Not an user? Regster Here")),
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
