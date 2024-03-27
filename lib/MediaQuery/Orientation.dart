

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: exampleeg(),));
}
class exampleeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var _mediaquery=MediaQuery.of(context);
    return Scaffold(
     // body:Builder(builder: (context){
      //  if (_mediaquery.orientation == Orientation.portrait){
       //   return potraitwidget();
      //  }
      //  else{
        //  return landscapewidget();
      //  }
    //  },) ,
      body: OrientationBuilder(builder: (context,orientation) {
        if(orientation == Orientation.portrait){
          return  potraitwidget();
        }
        else{
          return landscapewidget();
        }
      },),
    );
  }

  Widget potraitwidget() {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
    );
  }

  Widget landscapewidget() {
    return Container(
      decoration: BoxDecoration(color: Colors.purple),
    );
  }
  
}