import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfluttertpro/Sql%20Flite%20Example/SQLhelper.dart';

class mainsql extends StatefulWidget {
  @override
  State<mainsql> createState() => _mainsqlState();
}

class _mainsqlState extends State<mainsql> {
  bool isLoading = true;
  List<Map<String, dynamic>> note_from_db = []; //to store data from sqlflite

  @override
  void initState() {
    refreshData();
    super.initState();
  }

  void refreshData() async {
    final datas = await sqlhelper.readNotes(); //read data frm sqlflite
    setState(() {
      note_from_db = datas; //add the datas read from sqlflite into empty list
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: note_from_db.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(note_from_db[index]['title']),
                    subtitle: Text(note_from_db[index]['note']),
                    trailing: SizedBox(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                showForm(note_from_db[index]['id']);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
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
  final note = TextEditingController();

  void showForm(int? id) async {
    if(id!=null){
      final existingNote= note_from_db.firstWhere((note) => note['id']==id);
      title.text=existingNote['title'];
      note.text=existingNote['note'];
    }

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
              ElevatedButton(
                  onPressed: () async {
                    if (id == null) {
                      await addNote();
                    }
                    if (id != null) {
                      await updateNote(id);
                    }
                    title.text="";
                    note.text="";
                    Navigator.of(context).pop();
                  },
                  child: Text(id==null?"ADD NOTE":"UPDATE"))
            ],
          ),
        );
      },
    );
  }

  Future<void> addNote() async {
    await sqlhelper.createNote(title.text, note.text);
  }

  Future<void> updateNote(int id) async {}
}
