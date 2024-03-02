import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: staggeredexample(),
  ));
}

class staggeredexample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "Staggered Recycler View",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5,left: 5,right: 5),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/havasu-falls-wallpapers.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Havasu Falls",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5,right: 5,left: 5),
                        child: Container(
                          width: double.infinity,
                          height: 450,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/wp13218445-trondheim-wallpapers.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text("Trondheim",style: TextStyle(fontWeight: FontWeight.w900))
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5,right: 5,left: 5),
                        child: Container(
                          width: double.infinity,
                          height: 450,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/portugal.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text("Portugal",style: TextStyle(fontWeight: FontWeight.w900))
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/rocky mountain.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text("Rocky Mountain Park",style: TextStyle(fontWeight: FontWeight.w900))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
