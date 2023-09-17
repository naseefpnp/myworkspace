import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Loginx.dart';
class SignUP extends StatelessWidget {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final Cpassword = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Text(
            "create an account here",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Name",
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.mail)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: Cpassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Confirm Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: ElevatedButton(
                onPressed: () async{
              preferences = await SharedPreferences.getInstance();
                String namE = name.text;
                String mail = email.text;
                String pass = password.text;
                if(namE != null && pass != null && mail != null){
                  preferences.setString("Uname", namE);
                  preferences.setString("Email", mail);
                  preferences.setString("password", pass);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogInX()));
                }
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text("Sign up")),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LogInX()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
