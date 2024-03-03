import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: staceg(),debugShowCheckedModeBanner: false,
  ));
}

class staceg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue[50],
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  color: Colors.blue[900],
                ),
                Positioned(child: Text("Profile",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 25),),left: 50,top: 80,),
                Positioned(child: TextButton(onPressed: (){}, child: Text("Edit Your Profile",style: TextStyle(color: Colors.grey,fontSize: 17),)),top: 115,left: 39,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 160),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        "assets/images/person.png",
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text("Mishal Haneeef",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.blue[900]),),
            ),
            Padding(
              padding:EdgeInsets.only(top:80),
              child: Center(child: Container(
                width: 280,
                height: 60,
                child: Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  child: Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 7),
                      child: Icon(Icons.person,size: 30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13,left: 50),
                      child: Text("My Account",style: TextStyle(fontWeight: FontWeight.w900),),
                    )
                  ],),),
              )),
            ),
            Padding(
              padding:EdgeInsets.only(top:20),
              child: Center(child: Container(
                width: 280,
                height: 60,
                child: Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  child: Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 7),
                      child: Icon(Icons.dashboard,size: 30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13,left: 50),
                      child: Text("Dashboard",style: TextStyle(fontWeight: FontWeight.w900),),
                    )
                  ],),),
              )),
            ),Padding(
              padding:EdgeInsets.only(top:20),
              child: Center(child: Container(
                width: 280,
                height: 60,
                child: Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  child: Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 7),
                      child: Icon(Icons.details,size: 30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13,left: 50),
                      child: Text("About",style: TextStyle(fontWeight: FontWeight.w900),),
                    )
                  ],),),
              )),
            ),Padding(
              padding:EdgeInsets.only(top:20),
              child: Center(child: Container(
                width: 280,
                height: 60,
                child: Card(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  child: Wrap(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 7),
                      child: Icon(Icons.logout,size: 30,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13,left: 50),
                      child: Text("Logout",style: TextStyle(fontWeight: FontWeight.w900),),
                    )
                  ],),),
              )),
            )
          ],
        ),
      ),
    );
  }
}
