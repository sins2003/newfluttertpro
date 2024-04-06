import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homeshare.dart';

void main() {
  runApp(MaterialApp(
    home: SharedLogin(),
  ));
}

class SharedLogin extends StatefulWidget {
  @override
  State<SharedLogin> createState() => _SharedLoginState();
}

class _SharedLoginState extends State<SharedLogin> {
  late SharedPreferences data;
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  late bool newuser;
  @override
  void initState() {
    checklogin();
    super.initState();
  }
  void checklogin()async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool('newuser')??true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context) => homeshare(),));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        height: double.infinity,
        width: double.infinity,
        child: Center(
            child: Container(
              color: Colors.white,
              height: 500,
          width: 450,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    labelText: "username",
                      hintText: "username", suffixIcon: Icon(Icons.email)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                    labelText: "Password",
                      hintText: "password", suffixIcon: Icon(Icons.password)),
                ),
              ),
              ElevatedButton(onPressed: () {
                String usr=username.text;
                String pswd=password.text;

                if(usr!='' && pswd != ''){
                  print("Login Successfully");
                  data.setString("username", usr);
                  data.setBool("newuser", false);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => homeshare(),));
                }
              }, child: Text("Log in"))
            ],
          ),
        )),
      ),
    );
  }
}
