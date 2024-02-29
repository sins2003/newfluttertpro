import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: staggerd(),));
}

class staggerd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Card(
                child: Column(
                  children: [
                    Text("home"),
                    FaIcon(FontAwesomeIcons.home)
                  ],
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                child: Column(
                  children: [
                    Text("home"),
                    FaIcon(FontAwesomeIcons.home)
                  ],
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                child: Column(
                  children: [
                    Text("home"),
                    FaIcon(FontAwesomeIcons.home)
                  ],
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Card(
                child: Column(
                  children: [
                    Text("home"),
                    FaIcon(FontAwesomeIcons.home)
                  ],
                ),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: Card(
                child: Column(
                  children: [
                    Text("home"),
                    FaIcon(FontAwesomeIcons.home)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
