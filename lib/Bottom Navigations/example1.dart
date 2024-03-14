import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: naviexample1(),
    debugShowCheckedModeBanner: false,
  ));
}

class naviexample1 extends StatefulWidget {
  @override
  State<naviexample1> createState() => _naviexample1State();
}

class _naviexample1State extends State<naviexample1> {
  var index=1;
  var scrn = [naviexample1(), Text("Cart"), Text("Account")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "FARMER FRESSH ZONE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Center(
                child: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            )),
          ),
          Text(
            "Kochi",
            style: TextStyle(color: Colors.white),
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.green,
          title: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search for vegitables and fruits",
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: Wrap(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 70, right: 50, top: 15),
                      child: Container(
                        height: 20,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "VEGITABLES",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        height: 20,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "FRUITS",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 50, left: 50, top: 15),
                      child: Container(
                        height: 20,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "EXOTIC",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: double.infinity,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      scrollDirection: Axis.horizontal),
                  items: [
                    Image(image: AssetImage("assets/images/londen.jpg")),
                    Image(image: AssetImage("assets/images/portugal.jpg")),
                    Image(
                        image: AssetImage("assets/images/rocky mountain.jpg")),
                    Image(image: AssetImage("assets/images/delhi.jpg")),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: Text(
                  "Shop By Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
