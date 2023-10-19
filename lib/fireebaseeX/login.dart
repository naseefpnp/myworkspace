import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/fireebaseeX/fireebaseDb.dart';

import 'home.dart';

class LoginFire extends StatefulWidget {
  const LoginFire({super.key});

  @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {
  var uscontroller = TextEditingController();
  var pacontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
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
              controller: uscontroller,
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
              controller: pacontroller,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String email = uscontroller.text.trim();
                String password = pacontroller.text.trim();
                FirebaseHelper()
                    .login(email: email, password: password)
                    .then((result) {
                  if (result == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeFire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: Text("Login")),
        ],
      ),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyAJH5OM5lY75HTo2GoRzyRmwdupiyoOloQ",
    appId: "1:403385477918:android:49efea559991ce14cbb70f",
    projectId: 'fir-p-602f1',
    messagingSenderId: '',
  ));
}
