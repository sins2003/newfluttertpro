import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartBook extends StatefulWidget {
  @override
  State<CartBook> createState() => _CartBookState();
}

class _CartBookState extends State<CartBook> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BOOK LENDING",
            style: GoogleFonts.aDLaMDisplay(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
          bottom: TabBar(
              indicatorColor: Colors.yellow[600],
              dividerColor: Colors.yellow[600],
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.yellow[600],
              tabs: [
                Tab(
                  child: Text("Child"),
                ),
                Tab(
                  child: Text("Humanities"),
                ),
                Tab(
                  child: Text("Education"),
                ),
                Tab(
                  child: Text("Science"),
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                  child: Column(
                children: [
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
                                padding:
                                    const EdgeInsets.only(top: 10, right: 75),
                                child: Text(
                                  "Our Planet Earth",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        height: 20,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow[600],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
                                padding:
                                    const EdgeInsets.only(top: 10, right: 75),
                                child: Text(
                                  "Our Planet Earth",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        height: 20,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow[600],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
                                padding:
                                    const EdgeInsets.only(top: 10, right: 75),
                                child: Text(
                                  "Our Planet Earth",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        height: 20,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow[600],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
                                padding:
                                    const EdgeInsets.only(top: 10, right: 75),
                                child: Text(
                                  "Our Planet Earth",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        height: 20,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow[600],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
                                padding:
                                    const EdgeInsets.only(top: 10, right: 75),
                                child: Text(
                                  "Our Planet Earth",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        height: 20,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow[600],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
                                padding:
                                    const EdgeInsets.only(top: 10, right: 75),
                                child: Text(
                                  "Our Planet Earth",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        height: 20,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow[600],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
                                padding:
                                    const EdgeInsets.only(top: 10, right: 75),
                                child: Text(
                                  "Our Planet Earth",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        height: 20,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow[600],
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))),
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
              )),
            ),
            Text("Child"),
            Text("Child"),
            Text("Child"),
          ],
        ),
      ),
    );
  }
}
