import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/Data%20Passing/datas.dart';

class productdetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final product=DummyDatas.firstWhere((prodct) => prodct['id']==id);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image(image: AssetImage(product['image']),),
          ),
          Wrap(
            children: [
              Text(product['name'],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
              Center(child: Text("${product['price']}"))
            ],
          ),
          Text(product['description']),
        ],
      ));
  }
}