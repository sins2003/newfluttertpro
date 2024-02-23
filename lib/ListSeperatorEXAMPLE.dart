import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(){
  runApp(MaterialApp(home: listsep1(),));
}

class listsep1 extends StatelessWidget {
  var month=['january','february','march','april','may','june','july','augest','september','october','november','december'];
  var adv='advirtisment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Text(month[index]),

            );
          },
          separatorBuilder: (context,index){
            if(index%4==0){
              return Divider(
                color: Colors.red,
                thickness: 5,

              );
            }
            else{
              return SizedBox();
            }
          },
          itemCount: month.length),
    );
  }
}
