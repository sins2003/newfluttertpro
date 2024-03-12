import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: carouseleg(),
  ));
}

class carouseleg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.3,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 1),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal),
          items: [
            Image(image: AssetImage("assets/images/londen.jpg")),
            Image(image: AssetImage("assets/images/portugal.jpg")),
            Image(image: AssetImage("assets/images/rocky mountain.jpg")),
            Image(image: AssetImage("assets/images/delhi.jpg")),
          ],
        ),
      ),
    );
  }
}
