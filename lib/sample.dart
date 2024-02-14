import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
      home: sample(),));
}
class sample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome",style:TextStyle(color: Colors.white),),backgroundColor: Colors.red,),
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [
      Colors.blue,
      Colors.yellow,
      Colors.blue,
      ]
      ,begin: Alignment.bottomCenter
      ,end: Alignment.topCenter)),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ice_skating_sharp,color: Colors.black,size: 50,),
            Image(image: AssetImage("assets/images/game png.png")),
            Text("flutter",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w800,fontSize: 20,),),
          ],
        ),
      ),

    );
  }
}