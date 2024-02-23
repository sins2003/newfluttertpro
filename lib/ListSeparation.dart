import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listseparate(),));
}

class listseparate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Text("hi sins"),
            );
          },
          separatorBuilder: (context,index) {
            if(index%3==0){
              return Divider(
                  color: Colors.red,
                  thickness: 2,
              );
            }
            else{
              return SizedBox();
            }
          },
          itemCount: 10),
    );
  }
}
