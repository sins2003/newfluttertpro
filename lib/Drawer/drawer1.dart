import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: draweg(),
  ));
}

class draweg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "SinS",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black),
              ),
              accountEmail: Text(
                "sins@gmail.com",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/CesiumLogo.png"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/CesiumLogo.png"),
                )
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg1.jpg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("all email"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("drafts"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("send"),
            ),
            ListTile(
              leading: Icon(Icons.restore_from_trash),
              title: Text("trash"),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("welcome"),
      ),
    );
  }
}
