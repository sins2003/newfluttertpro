import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'HiveLogin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("userbox");
  runApp(MaterialApp(
    home: Hivelogin(),
  ));
}

class Hivesignup extends StatefulWidget {
  @override
  State<Hivesignup> createState() => _HivesignupState();
}

class _HivesignupState extends State<Hivesignup> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  bool ischecked = false;
  var hname = TextEditingController();
  var hemail = TextEditingController();
  var hpass = TextEditingController();
  var hconpass = TextEditingController();

  final userbox = Hive.box('userbox');
  List<Map<String, dynamic>> user = [];

  Future<void> CreateUser(Map<String, dynamic> user) async {
    await userbox.add(user);
    loaduser();
  }

  @override
  void initState() {
    super.initState();
    loaduser();
  }

  void getuser() async {
    if (userbox.get('email') != null) {
      hemail.text = userbox.get('email');
      ischecked = true;
      setState(() {});
    } else {
      ischecked = false;
    }
  }

  Future<Map<String, dynamic>> readdata(int key) async {
    final data = await userbox.getAt(key);
    return data;
  }

  Future<void> deleteuser(int id) async {
    await userbox.delete(id);
    loaduser();
  }

  void loaduser() async {
    final data = userbox.keys.map((id) {
      final value = userbox.get(id);
      return {
        'key': id,
        'name': value['name'],
        'email': value['email'],
        'password': value['password']
      };
    }).toList();
    setState(() {
      user = data.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                TextFormField(
                  controller: hname,
                  decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                TextFormField(
                    controller: hemail,
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)))),
                TextFormField(
                    controller: hpass,
                    validator: (pass) {
                      if (pass!.isEmpty || pass.length < 6) {
                        return "please enter valid password";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)))),
                TextFormField(
                    controller: hconpass,
                    validator: (conpass) {
                      if (conpass!.isEmpty || conpass.length < 6) {
                        return "Please enter valid password";
                      } else if (hpass.text != hconpass.text) {
                        return "Password Not Match!!!";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        labelText: "Confirm Password",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)))),
                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      // sing_up(context);
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        if (userbox.get('email') != null) {
                          hemail.text = userbox.get('email');
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("account Already exist!!")));
                          // setState(() {});
                        }
                      } else {
                        CreateUser({
                          'name': hname.text,
                          'email': hemail.text,
                          'password': hpass.text
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Hivelogin(),));
                      }

                      // String eemail=hemail.text;
                      // readdata();
                      // var data=getuser(eemail);
                      // if(1==1){
                      //
                      // }
                      //   getuser();
                      //   if (ischecked == true) {
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //         SnackBar(content: Text(
                      //             "Account Already Exist!!")));
                      //   } else {
                      //     CreateUser({
                      //       'name': hname.text,
                      //       'email': hemail.text,
                      //       'password': hpass.text
                      //     });
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => Hivelogin(),));
                      //   }
                      //
                    },
                    child: Text("Sign Up")),
                TextButton(
                    onPressed: () {},
                    child: Text("Already Have a account?LOGIN"))
              ],
            ),
          ),
        ),
      ),
    );
  }

// Future<void> usersearch(int id, Map<String, dynamic> usrcheck)async{
//    final data=await userbox.get();
//
// }

// void sing_up(BuildContext context) async {
//   final username = hname.text;
//   final email = hemail.text;
//   final password = hpass.text;
//   if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty){
//     if(!userbox.containsKey(email)){
//
//     }
//   }
// }
}
