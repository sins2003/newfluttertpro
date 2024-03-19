import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class homebook extends StatefulWidget {
  @override
  State<homebook> createState() => _homebookState();
}

class _homebookState extends State<homebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enjoy Reading",
          style: GoogleFonts.aDLaMDisplay(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search books",
                        suffixIcon: FaIcon(CupertinoIcons.search)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 200,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow[600]),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: Image(
                            image:
                                AssetImage("assets/images/Book/BookKid.png")),
                      ),
                      Positioned(
                          top: 30,
                          left: 30,
                          child: Text(
                            "Child Picture",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                                color: Colors.brown[700]),
                          )),
                      Positioned(
                          top: 80,
                          left: 30,
                          child: Text(
                            "Book",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w800,
                                color: Colors.brown[700]),
                          )),
                      Positioned(
                        left: 30,
                        top: 150,
                        child: Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Click to enter",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          height: 20,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 80,
                  width: 450,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Image(
                                height: 45,
                                width: 45,
                                image: AssetImage(
                                    "assets/images/Book/booklisticon.png")),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("Book List"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Column(
                          children: [
                            Image(
                                height: 45,
                                width: 45,
                                image: AssetImage(
                                    "assets/images/Book/bookreading.png")),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("Reading"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Column(
                          children: [
                            Image(
                                height: 45,
                                width: 45,
                                image: AssetImage(
                                    "assets/images/Book/spaceicon.png")),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("Space"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Column(
                          children: [
                            Image(
                                height: 45,
                                width: 45,
                                image:
                                    AssetImage("assets/images/Book/more.png")),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("More"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 20,
                        width: 3,
                        color: Colors.yellow[600],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "RECOMMEND",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 20),
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(
                        CupertinoIcons.forward,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Card(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Book/OurPlantEarthBook.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        height: 170,
                        width: 300,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 75),
                              child: Text(
                                "Our Planet Earth",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 20),
                              child: Text(
                                "Extracurricular reading / growing "
                                "Motivational Story Book",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "261",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "remaining",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Container(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Borrow it",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      height: 20,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 170,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Book/OurPlantEarthBook.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 75),
                            child: Text(
                              "Our Planet Earth",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "Extracurricular reading / growing "
                              "Motivational Story Book",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "261",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "remaining",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Container(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Borrow it",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    height: 20,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow[600],
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10))),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 170,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Book/OurPlantEarthBook.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 75),
                            child: Text(
                              "Our Planet Earth",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "Extracurricular reading / growing "
                              "Motivational Story Book",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "261",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "remaining",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Container(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Borrow it",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    height: 20,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.yellow[600],
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10))),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
