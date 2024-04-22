import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HotelSqlHelper.dart';


class HotelAdminPage extends StatefulWidget {
  @override
  State<HotelAdminPage> createState() => _HotelAdminPageState();
}

class _HotelAdminPageState extends State<HotelAdminPage> {
  var data;

  void delete(int id) async {
    await SQLHelprHotel.DeleteUser(id);
    Refresh();
  }

  bool isLoading = true;

  @override
  void initState() {
    Refresh();
    super.initState();
  }

  void Refresh() async {
    var mydata = await SQLHelprHotel.DsiplayUsers();
    setState(() {
      data = mydata;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("User Info"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(data[index]['name']),
                        Text(data[index]['email'])
                      ],
                    ),
                    subtitle: Text(data[index]["password"]),
                    trailing: IconButton(
                      onPressed: () {
                        delete(data[index]['id']);
                      },
                      icon: Icon(CupertinoIcons.delete),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
