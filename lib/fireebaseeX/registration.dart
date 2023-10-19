import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myworkspace/fireebaseeX/login.dart';

import 'fireebaseDb.dart';
class RegEX extends StatefulWidget {
  const RegEX({super.key});

  @override
  State<RegEX> createState() => _RegEXState();
}

class _RegEXState extends State<RegEX> {
 var ucontroller = TextEditingController();
 var pcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "username",
                labelText: "username",
              ),
              controller: ucontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password",
                labelText: "password",
              ),
              controller: pcontroller,
            ),
          ),
          ElevatedButton(onPressed: (){
            String email = ucontroller.text.trim();
            String password = pcontroller.text.trim();
            FirebaseHelper().register(useremail : email, password : password).then((result){
              if(result == null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginFire()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
              }
            });
          }, child: Text("Signup")),
        ],
      ),
    );
  }
}
