import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: appbareg(),debugShowCheckedModeBanner: false,));
}
class appbareg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Instagram",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.camera_alt,color: Colors.white,),
          Icon(Icons.search,color: Colors.white,),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: TextButton(onPressed: () {  },child: Text("Settings"),)),
              PopupMenuItem(child: Text("Archive")),
              PopupMenuItem(child: Text("Saved")),
              PopupMenuItem(child: Text("Log out")),
            ];
          })
        ],
      ),
    );
  }
}
