import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("taskbox");

  runApp(MaterialApp(
    home: hiveeg(),
  ));
}

class hiveeg extends StatefulWidget {
  @override
  State<hiveeg> createState() => _mainsqlState();
}

class _mainsqlState extends State<hiveeg> {
  final tbox = Hive.box('taskbox');
  List<Map<String, dynamic>> task = [];
  bool isLoading = true;

  Future<void> CreateTask(Map<String, dynamic> task) async {
    await tbox.add(task);
    loadTask();
  }

  @override
  void initState() {
    super.initState();
    loadTask();
    isLoading=false;
  }

  void loadTask()async{
    final data=tbox.keys.map((id){
      final value=tbox.get(id);
      return {'key':id,'name':value['name'],'details':value['details']};
    }).toList();
    setState(() {
      task=data.reversed.toList();
    });
  }
  F
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.yellow,
                  child: ListTile(
                    title: Text(task[index]['name']),
                    subtitle: Text(task[index]['details']),
                    trailing: SizedBox(
                      child: Wrap(
                        children: [
                          IconButton(onPressed: () {
                            showForm(id)
                          }, icon: Icon(Icons.edit)),
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
                    hintText: "Task Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              TextField(
                controller: note,
                decoration: InputDecoration(
                    hintText: "Task details",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (id == null) {
                      CreateTask({'name': title.text, 'details': note.text});
                    }
                    if (id != null) {
                      UpdateTask(
                          id, {'name': title.text, 'details': note.text});
                    }
                    title.text = "";
                    note.text = "";
                    Navigator.of(context).pop();
                  },
                  child: Text(id == null ? "ADD NOTE" : "UPDATE"))
            ],
          ),
        );
      },
    );
  }
}