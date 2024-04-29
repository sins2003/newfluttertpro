import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main()async{
  await Hive.initFlutter();
  Hive.openBox("user");
  runApp(GetMaterialApp(home: LoginIns(),));
}

class LoginIns extends StatefulWidget{
  @override
  State<LoginIns> createState() => _LoginInsState();
}

class _LoginInsState extends State<LoginIns> {
  bool showpass = true;
  final lemail=TextEditingController();
  final lpass1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title: Text("LOG IN"),),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "Login Page",
                style: GoogleFonts.aboreto(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              child: TextFormField(
                controller: lemail,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "e-mail",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextFormField(
                controller: lpass1,
                obscuringCharacter: "*",
                obscureText: showpass,
                decoration: InputDecoration(
                    hintText: "password",
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
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 20,left: 20),
              child: ElevatedButton(onPressed: () {

              }, child: Text("LOG IN")),
            ),
            TextButton(onPressed: () {

            }, child: Text("Not an user? create account"))
          ],
        ),
      ),
    );
  }
}