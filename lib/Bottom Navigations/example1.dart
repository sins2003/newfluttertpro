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

  var index = 0;
  var scrn = [showeg(), Text("Cart"), Text("Account")];

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
      body: scrn[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (tabindex) {
          setState(() {
            index = tabindex;
          });
        },
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

class showeg extends StatelessWidget {
  var img = [
    "assets/images/FarmerAppImaages/pexels-engin-akyurt-1435904.jpg",
    "assets/images/FarmerAppImaages/pexels-hana-mara-3650647.jpg",
    "assets/images/FarmerAppImaages/pexels-kaichieh-chan-708777.jpg",
    "assets/images/FarmerAppImaages/pexels-photomix-company-235294.jpg",
    "assets/images/FarmerAppImaages/pexels-pixabay-46174.jpg",
    "assets/images/FarmerAppImaages/pexels-pixabay-87626.jpg",
    "assets/images/FarmerAppImaages/pexels-pixabay-161559.jpg",
    "assets/images/FarmerAppImaages/pexels-pixabay-533280.jpg",
    "assets/images/FarmerAppImaages/pexels-wendy-wei-1656663.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70, right: 50, top: 15),
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
                  padding: const EdgeInsets.only(right: 50, left: 50, top: 15),
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
                Image(
                    image: AssetImage(
                        "assets/images/FarmerAppImaages/pexels-engin-akyurt-1435904.jpg")),
                Image(
                    image: AssetImage(
                        "assets/images/FarmerAppImaages/pexels-kaichieh-chan-708777.jpg")),
                Image(
                    image: AssetImage(
                        "assets/images/FarmerAppImaages/pexels-pixabay-87626.jpg")),
                Image(
                    image: AssetImage(
                        "assets/images/FarmerAppImaages/pexels-wendy-wei-1656663.jpg")),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: Center(
                child: Container(
              height: 70,
              width: 450,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.time_solid,
                          color: Colors.black,
                        ),
                        Text("30 Min Policy")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.perm_contact_calendar_sharp,
                          color: Colors.black,
                        ),
                        Text("Tracebility")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.house,
                          color: Colors.black,
                        ),
                        Text("Local Sourroundings")
                      ],
                    ),
                  )
                ],
              ),
            )),
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

        ],
      ),
    );
  }
}
