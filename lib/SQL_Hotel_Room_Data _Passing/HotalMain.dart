import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HotelDetails.dart';
import 'HotelSplash.dart';
import 'hoteldatas.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelSplash(),
    routes: {'secondpage': (context) => HotelDetail()},
  ));
}



class HotelMainPage extends StatefulWidget {
  final data;

  HotelMainPage({Key? key, required this.data}) : super(key: key);

  @override
  State<HotelMainPage> createState() => _HotelMainPageState();
}

class _HotelMainPageState extends State<HotelMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            floating: true,
            pinned: true,
            title: Icon(Icons.menu),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 20, left: 150),
              child: Text(
                "Type Your Location",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
            ],
            bottom: AppBar(
              backgroundColor: Colors.blue,
              title: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Kakkanad,kochi",
                      prefixIcon: Icon(CupertinoIcons.search),
                      suffixIcon: Icon(CupertinoIcons.camera)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: Colors.white,
              height: 120,
              child: Stack(
                children: [
                  Positioned(
                    height: 80,
                    width: 100,
                    child: Container(
                      child: Card(
                        color: Colors.pink,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(child: Icon(Icons.hotel)),
                            ),
                            Center(child: Text("Hotel"))
                          ],
                        ),
                      ),
                    ),
                    top: 20,
                    left: 50,
                  ),
                  Positioned(
                    height: 80,
                    width: 100,
                    child: Card(
                      color: Colors.blue,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child:
                                Center(child: Icon(Icons.restaurant_outlined)),
                          ),
                          Center(child: Text("Restaurant"))
                        ],
                      ),
                    ),
                    top: 20,
                    left: 200,
                  ),
                  Positioned(
                    height: 80,
                    width: 100,
                    child: Card(
                      color: Colors.yellow,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Center(child: Icon(Icons.local_cafe)),
                          ),
                          Center(child: Text("Cafe"))
                        ],
                      ),
                    ),
                    top: 20,
                    right: 50,
                  ),
                ],
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildListDelegate(HotelDatas.map((product) =>
                  GestureDetector(
                    onTap: () => getnot(context, product['id']),
                    child: Card(
                        child: Container(
                      height: 300,
                      child: Stack(children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5, left: 5, right: 5),
                          child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("${product["image"]}"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          right: 20,
                          child: Container(
                              height: 35,
                              width: 35,
                              color: Colors.white,
                              child:
                                  Center(child: Text('\$${product["price"]}'))),
                        ),
                        Positioned(
                            top: 210,
                            left: 10,
                            child: Text(
                              "${product['name']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 20),
                            )),
                        Positioned(
                            top: 237, left: 10, child: Text("Kakkanad,Kochi")),
                        Positioned(
                            top: 15,
                            right: 15,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.star,
                                    color: Colors.white))),
                        Positioned(
                          top: 260,
                          left: 10,
                          child: Container(
                            child: Wrap(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 265,
                            left: 135,
                            child: Text(
                              "(250 reviews)",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ))
                      ]),
                    )),
                  )).toList()))
        ],
      ),
    );
  }

  getnot(BuildContext context, product) {
    Navigator.of(context).pushNamed('secondpage', arguments: product);
  }
}
