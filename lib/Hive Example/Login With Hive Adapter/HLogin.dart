import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:newfluttertpro/Hive%20Example/Login%20With%20Hive%20Adapter/Database/Database.dart';

import 'Admin.dart';
import 'HSign.dart';
import 'Model Class/usermodel.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.openBox("user");
  runApp(GetMaterialApp(
    home: Hlogin2(),
  ));
}

class Hlogin2 extends StatefulWidget {
  @override
  State<Hlogin2> createState() =>
      _loginpagewithvalidationState();
}

class _loginpagewithvalidationState extends State<Hlogin2> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  final lemail=TextEditingController();
  final lpass1=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Login Page",
                  style: GoogleFonts.aboreto(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 50,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                child: TextFormField(
                  controller: lemail,
                  validator: (email){
                    if(email!.isEmpty || !email.contains('@') || !email.contains('.')){
                      return "please enter a valid email";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      hintText: "e-mail",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: TextFormField(
                  controller: lpass1,
                  validator: (password){
                    if(password!.isEmpty || password.length<6){
                      return "please enter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                  obscuringCharacter: "*",
                  obscureText: showpass,
                  decoration: InputDecoration(
                      hintText: "password",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass == true) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () async{
                    final userlist=await DBfunction.instance.GetUser();
                    FindUser(userlist);
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Hsignup()));
                  }, child: Text("Not an user? create account"))
            ],
          ),
        ),
      ),
    );
  }
  Future<void> FindUser(List<User>userlist)async {
    final email=lemail.text.trim();
    final password=lpass1.text.trim();
    bool userfound=false;
    final validate=await validateLogin(email,password);
    if(validate==true){
      await Future.forEach(userlist, (user) {
        if(user.email==email&&user.password==password){
          userfound=true;
        }else{
          userfound=false;
        }
      });
      if(userfound==true){
        Get.offAll(()=>Hadmineg(email: email,));
        Get.snackbar("Success", "Login Success");
      }
      else{
        Get.snackbar("Error", "Incorrect Email/password");
      }
    }else{
      Get.snackbar("error", "Incorrect Email/password");
    }
  }

  Future<bool>validateLogin(String email, String password) async{
    if(email!=""&&password!=""){
      return true;
    }else{
      Get.snackbar("Error", "Fiels cannot be empty!!",backgroundColor: Colors.red);
      return false;
    }
  }
}

