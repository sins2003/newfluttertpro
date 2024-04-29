import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfluttertpro/Hive%20Example/Login%20With%20Hive%20Adapter/Database/Database.dart';
import 'package:newfluttertpro/Validations/loginpagewithvalidation.dart';

import 'HLogin.dart';
import 'Model Class/usermodel.dart';

class Hsignup extends StatefulWidget {
  @override
  State<Hsignup> createState() => _signupvalidateState();
}

class _signupvalidateState extends State<Hsignup> {
  bool show = true;
  final semail = TextEditingController();
  final sname = TextEditingController();
  final spass1 = TextEditingController();
  final spass2 = TextEditingController();
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
                  controller: sname,
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
                  controller: semail,
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
                  controller: spass1,
                  obscuringCharacter: "*",
                  obscureText: show,
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
                  controller: spass2,
                  obscuringCharacter: "*",
                  obscureText: show,
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
                    validatesignup();
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

  void validatesignup() async {
    final vemail = semail.text.trim();
    final vname = sname.text.trim();
    final vpass = spass1.text.trim();
    final vpass2 = spass2.text.trim();

    final emailvalidationresult = EmailValidator.validate(vemail);
    if (vemail != "" && vpass != "") {
      if (emailvalidationresult == true) {
        final passwordvalidationresult = checkpassword(vpass, vpass2);
        if (passwordvalidationresult == true) {
          final user = User(email: vemail, password: vpass);

          await DBfunction.instance.UserSignup(user);
          Get.back();
          Get.snackbar("success", "User Created Successfully");
        }
      } else {
        Get.snackbar("Error", "Provide a valid email");
      }
    } else {
      Get.snackbar("Error", "Fields can not be empty");
    }
  }

  bool checkpassword(String vpass, String vpass2) {
    if (vpass == vpass2) {
      if (vpass.length < 6) {
        Get.snackbar("Error", "Password must be > 6");
        return false;
      } else {
        return true;
      }
    } else {
      Get.snackbar('Error', "Password missmatch");
      return false;
    }
  }
}
