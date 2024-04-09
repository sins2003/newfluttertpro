import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/Sql%20Flite%20Example/SQLhelper.dart';

class mainsql extends StatefulWidget {
  @override
  State<mainsql> createState() => _mainsqlState();
}

class _mainsqlState extends State<mainsql> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(""),
                    subtitle: Text(""),
                    trailing: SizedBox(
                      child: Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(null),
        child: Icon(Icons.add),
      ),
    );
  }
  final title = TextEditingController();
  final note=TextEditingController();

  void showForm(int? id) async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 120),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextField(
                controller: title,
                decoration: InputDecoration(
                    hintText: "Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              TextField(
                controller: note,
                decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              ElevatedButton(onPressed: () async {
                if(id==null){
                  await addNote();
                }
                if (id!=null){
                  await updateNote(id);
                }
              }, child: Text(" "))
            ],
          ),
        );
      },
    );
  }

  Future <void> addNote() async{
    await sqlhelper.createNote(title.text, note.text);
  }

  Future<void> updateNote(int id) async{}

}
