import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: profilui(),
    debugShowCheckedModeBanner: false,
  ));
}

class profilui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.arrow_back_outlined, color: Colors.black),
        actions: [FaIcon(Icons.menu, color: Colors.black)],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(blurRadius: 20)]),
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/girlprofil.jpg"),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 30),
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: FaIcon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                            backgroundColor: Colors.cyan,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: CircleAvatar(
                            backgroundColor: Colors.lightBlue[300],
                            child: FaIcon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Chromicle",
                  style: GoogleFonts.acme(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 40,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Text(
                "@IamSinS",
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 40, right: 40),
                child: Text(
                  textAlign: TextAlign.center,
                  "Mobile App Devoloper and Open Source Enthusiastic",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 300,
                  width: 400,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: ExpansionTile(
                              leading: Icon(Icons.person),
                              title: Text("Privacy"),
                              trailing: Icon(CupertinoIcons.forward),
                              children: [ListTile()],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: ExpansionTile(
                              leading: Icon(Icons.history),
                              title: Text("Purchase History"),
                              trailing: Icon(CupertinoIcons.forward),
                              children: [ListTile()],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: ExpansionTile(
                              leading: Icon(Icons.help_outline),
                              title: Text("Help & Support"),
                              trailing: Icon(CupertinoIcons.forward),
                              children: [ListTile()],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: ExpansionTile(
                              leading: Icon(Icons.settings),
                              title: Text("Settings"),
                              trailing: Icon(CupertinoIcons.forward),
                              children: [ListTile()],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: ExpansionTile(
                              leading: FaIcon(Icons.person_add_sharp),
                              title: Text("Invite a friend"),
                              trailing: FaIcon(CupertinoIcons.forward),
                              children: [ListTile()],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
