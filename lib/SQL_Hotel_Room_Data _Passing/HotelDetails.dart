import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/SQL_Hotel_Room_Data%20_Passing/hoteldatas.dart';

class HotelDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = HotelDatas.firstWhere((prodct) => prodct['id'] == id);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Room Details"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              product['name'],
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(child: Image(image: AssetImage(product['image']))),
          SizedBox(
            height: 50,
          ),
          Center(child: Text(product['description'])),
          SizedBox(
            height: 20,
          ),
          Text(
            "Price : \$${product['price']}",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
