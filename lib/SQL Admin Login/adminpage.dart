import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/SQL%20Admin%20Login/sqlhelper.dart';

class adminpage extends StatefulWidget{
  @override
  State<adminpage> createState() => _adminpageState();
}

class _adminpageState extends State<adminpage> {
  var data;
  void delete(int id)async{
    await sqlhelpeeradmin.DeleteUser(id);
    Refresh();
  }
  bool isLoading=true;
  @override
  void initState() {
    Refresh();
    super.initState();
  }
  void Refresh()async{
    var mydata=await sqlhelpeeradmin.DisplayUsers();
    setState(() {
      data=mydata;
      isLoading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(backgroundColor:Colors.yellow[700],title: Text("ADMIN"),),
      body:  isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
        child: ListView.builder(itemCount: data.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(title: Text("NAME :${data[index]['name']} "),
          subtitle: Text("Password :${data[index]['password']}"),trailing: IconButton(onPressed: () { delete(data[index]['id']); }, icon: Icon(CupertinoIcons.delete),),),
        );
      },),),
    );
  }
}