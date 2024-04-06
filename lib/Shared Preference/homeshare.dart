import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/Shared%20Preference/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeshare extends StatefulWidget{
  @override
  State<homeshare> createState() => _homeshareState();
}

class _homeshareState extends State<homeshare> {
  late SharedPreferences data;
  late String homeuser;
  @override
  void initState() {
   fetchhome();
    super.initState();
  }
  void fetchhome()async{
    data=await SharedPreferences.getInstance();
    setState(() {
      homeuser=data.getString("username")!;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         children: [
           Text("Hai , welcome $homeuser"),
           ElevatedButton(onPressed: () {
             data.setBool('newuser', true);
             Navigator.push(context, MaterialPageRoute(builder: (context) => SharedLogin(),));
           }, child: Text("Log Out"))
         ],
       ),
     ),
   );
  }
}