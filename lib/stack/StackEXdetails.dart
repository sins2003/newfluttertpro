import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: staceg(),
  ));
}

class staceg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue[100],
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  color: Colors.blueGrey[600],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/images/person.png",
                        ),
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text("Mishal Haneeef"),
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
