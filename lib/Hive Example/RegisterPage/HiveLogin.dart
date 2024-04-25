import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HiveSignup.dart';

class Hivelogin extends StatefulWidget {
  @override
  State<Hivelogin> createState() => _HiveloginState();
}

class _HiveloginState extends State<Hivelogin> {
  var lemail = TextEditingController();
  var lpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: lemail,
              decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email)),
            ),
            TextFormField( controller: lpass,
              decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password)),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {}, child: Text("Log in")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Hivesignup(),
                      ));
                },
                child: Text("Dont Have A account? register Here"))
          ],
        ),
      ),
    );
  }
}
