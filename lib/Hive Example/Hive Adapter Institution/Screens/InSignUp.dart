import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newfluttertpro/Hive%20Example/Hive%20Adapter%20Institution/ModelClass/InsitituteModelClass.dart';

class SignupIns extends StatefulWidget {
  @override
  State<SignupIns> createState() => _SignupInsState();
}

class _SignupInsState extends State<SignupIns> {
  bool show = true;
  final semail = TextEditingController();
  final sname = TextEditingController();
  final spass1 = TextEditingController();
  final spass2 = TextEditingController();
  final scourse=TextEditingController();
  final sgraduation=TextEditingController();
  GlobalKey<FormState> Formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Institution Registration"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "Registration",
                style: GoogleFonts.acme(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextFormField(
                controller: sname,
                decoration: InputDecoration(
                    labelText: "Useer Name",
                    hintText: "username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextFormField(
                controller: semail,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "e-mail",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextFormField(
                controller: scourse,
                decoration: InputDecoration(
                    labelText: "Course",
                    hintText: "Course",
                    prefixIcon: Icon(Icons.school),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextFormField(
                controller: sgraduation,
                decoration: InputDecoration(
                    labelText: "Graduation",
                    hintText: "Graduation",
                    prefixIcon: Icon(Icons.school),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextFormField(
                controller: spass1,
                obscuringCharacter: "*",
                obscureText: show,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "paassword",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (show == true) {
                              show = false;
                            } else {
                              show = true;
                            }
                          });
                        },
                        icon: Icon(show == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: TextFormField(
                controller: spass2,
                obscuringCharacter: "*",
                obscureText: show,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "confirm password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (show == true) {
                              show = false;
                            } else {
                              show = true;
                            }
                          });
                        },
                        icon: Icon(show == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  validatesignup();
                },
                child: Text("Register"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              ),
            )
          ],
        ),
      ),
    );
  }

  void validatesignup() async{
    final vemail=semail.text.trim();
    final vname=sname.text;
    final vpass=spass1.text.trim();
    final vpass2=spass2.text.trim();
    final vcourse=scourse.text;
    final vgraduation=sgraduation.text;

    final emaailvalid=EmailValidator.validate(vemail);
    if(vemail != "" && vpass != ""){
      if(emaailvalid==true){
        final passvalid=passvalidresult(vpass,vpass2);
        if(passvalid==true){
          final user=UserInstitution(email: vemail, name: vname, password: vpass, course: vcourse, graduation: vgraduation);

        }else{}
      }else{}
    }else{}
  }

  bool passvalidresult(String vpass, String vpass2) {
    if(vpass==vpass2){
      if(vpass.length<6){
        Get.snackbar("Error","password must be < 6");
        return false;
      }else{
        return true;
      }
    }else{
      return false;
    }
  }
}
