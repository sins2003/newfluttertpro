import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/login.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/userpage.dart';

class singup extends StatefulWidget {
  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  bool show = true;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(backgroundColor: Colors.yellow[700],
        title: Text("SIGN UP PAGE", style: TextStyle(fontSize: 20),),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("SIGN UP", style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w700),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 30,right: 30),
                child: TextFormField(
                  validator: (name) {
                    if(name!.isEmpty){
                      return 'please enter valid user name';
                    }
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "NAME",
                    prefixIcon: Icon(FontAwesomeIcons.user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: TextFormField(
                  validator: (email) {
                    if(email!.isEmpty || !email.contains('@') || !email.contains('.')){
                      return "please enter valid email";
                    }else
                      return null;
                  },
                  decoration: InputDecoration(hintText: "E mail",
                      labelText: "E-MAIL",
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: Icon(Icons.person)),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
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
                      labelText: "PASSWORD",
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
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
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
                      labelText: "CONFIRM PASSWORD",
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
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => userpage()));
                  }
                  else {

                  }
                }, child: Text("Sign Up")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login(),));
                }, child: Text("You have already account? LOGIN here")),
              )
            ],
          ),
        ),
      ),
    );
  }
}