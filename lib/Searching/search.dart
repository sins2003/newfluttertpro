import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(home: search(),));
}

class search extends StatefulWidget {
  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  List<String> list1 = [
    'apple',
    'orenge',
    'banana',
    'carrot',
    'dragon fruit',
    'guava',
    'grape',
    'watermelon',
    'sapoatta',
    'raspbery'
  ];
  String searchText = '';
  String searchResult = '';

  void filterItems(String query) {
    setState(() {
      searchText = query;
      searchResult = '';
    });
  }

  void setSearchResul(String result) {
    setState(() {
      searchResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> resultitems = list1
        .where((item) => item.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              filterItems(value);
            },
            decoration: InputDecoration(
                hintText: "search", prefixIcon: Icon(CupertinoIcons.search)),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: resultitems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(resultitems[index]),
                  onTap: () {
                    setSearchResul(resultitems[index]);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Text('Search Result $searchResult',style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
