import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/login.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/singup.dart';

void main(){
  runApp(MaterialApp(home: splash(),));
}

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(backgroundColor: Colors.yellow[700],
        title: Text("SPLASH SCREEN",style: TextStyle(fontSize: 20),),),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(child: Image(height:400,width: 400,
                  image: AssetImage("assets/images/welcome.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30),
              child: Center(
                child: Container(width:400,
                  child: ElevatedButton(
                      onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                  }, child: Text("Login")),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Container(width: 400,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => singup(),));
                  }, child: Text("Sign UP")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}