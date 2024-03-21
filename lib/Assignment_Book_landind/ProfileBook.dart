import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ProffileBook extends StatefulWidget {
  @override
  State<ProffileBook> createState() => _ProffileBookState();
}

class _ProffileBookState extends State<ProffileBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: GoogleFonts.aDLaMDisplay(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,)
        ),),
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
                      child: CircleAvatar(backgroundColor: Colors.yellow[600],child: Lottie.asset("assets/animations/book.json"))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Name",
                  style: GoogleFonts.acme(
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .displayLarge,
                      fontSize: 40,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 400,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow[600],
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            leading: Icon(Icons.person),
                            title: Text("Edit Profile"),
                            trailing: Icon(CupertinoIcons.forward),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow[600],
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            leading: Icon(Icons.history),
                            title: Text("Purchase History"),
                            trailing: Icon(CupertinoIcons.forward),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow[600],
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            leading: Icon(Icons.help_outline),
                            title: Text("Help & Support"),
                            trailing: Icon(CupertinoIcons.forward),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow[600],
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            leading: Icon(Icons.settings),
                            title: Text("Settings"),
                            trailing: Icon(CupertinoIcons.forward),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow[600],
                              borderRadius: BorderRadius.circular(50)),
                          child: ListTile(
                            leading: FaIcon(Icons.logout),
                            title: Text("Log Out"),
                            trailing: IconButton(onPressed: () {
                              showDialog(context: context, builder: (context) {
                                return AlertDialog(
                                  title: Text("LOG OUT!!!"),
                                  content: Text("Do you want to continue"),
                                  actions: [
                                    TextButton(onPressed: () {
                                      Navigator.of(context).pop();
                                    }, child: Text("Yes")),
                                    TextButton(onPressed: () {
                                      Navigator.of(context).pop();
                                    }, child: Text("No"))
                                  ],
                                );
                              },);
                            }, icon: Icon(CupertinoIcons.forward),),
                          ),
                        ),
                      ),
                    ],
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
