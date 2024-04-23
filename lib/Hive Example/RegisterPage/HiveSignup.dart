import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'HiveLogin.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("user");
  runApp(MaterialApp(home: Hivelogin(),));
}
class Hivesignup extends StatefulWidget {
  @override
  State<Hivesignup> createState() => _HivesignupState();
}

class _HivesignupState extends State<Hivesignup> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  var hname=TextEditingController();
  var hemail=TextEditingController();
  var hpass=TextEditingController();
  var hconpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          child: Column(
            children: [
              TextFormField(
                controller: hname,
                decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              TextFormField(
                controller: hemail,
                  decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)))),
              TextFormField(
                controller: hpass,
                  validator: (pass) {
                    if(pass!.isEmpty||pass.length<6){
                      return "please enter valid password";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)))),
              TextFormField(
                controller: hconpass,
                  validator: (conpass) {
                    if(conpass!.isEmpty||conpass.length<6)
                      {
                        return "Please enter valid password";
                      }
                    else if(hpass.text!=hconpass.text){
                        return "Password Not Match!!!";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)))),
              SizedBox(height: 40),
              ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
              TextButton(
                  onPressed: () {}, child: Text("Already Have a account?LOGIN"))
            ],
          ),
        ),
      ),
    );
  }
}
