import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: datatable(),
  ));
}

class datatable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(border: TableBorder.all(width: 1),
        columns: [
          DataColumn(
              label: Text(
            "Name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          )),
          DataColumn(
              label: Text(
            "Age",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          )),
          DataColumn(
              label: Text(
            "Job",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          )),
          DataColumn(
              label: Text(
            "Salary",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ))
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text("Anu")),
            DataCell(Text("20")),
            DataCell(Text("Devoloper")),
            DataCell(Text("20000")),
          ]),
          DataRow(cells: [
            DataCell(Text("Ammu")),
            DataCell(Text("22")),
            DataCell(Text("Teacher")),
            DataCell(Text("30000")),
          ]),
          DataRow(cells: [
            DataCell(Text("Sins")),
            DataCell(Text("20")),
            DataCell(Text("Devoloper")),
            DataCell(Text("40000")),
          ]),
          DataRow(cells: [
            DataCell(Text("Roshan")),
            DataCell(Text("25")),
            DataCell(Text("Docter")),
            DataCell(Text("50000")),
          ]),
          DataRow(cells: [
            DataCell(Text("Paul")),
            DataCell(Text("23")),
            DataCell(Text("Artist")),
            DataCell(Text("70000")),
          ]),
        ],
      ),
    );
  }
}
