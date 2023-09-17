import 'package:flutter/material.dart';

import 'Loginx.dart';
import 'Signup.dart';

class LogX extends StatelessWidget {
  const LogX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hello there!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Autamatic identity verification which enables you to verify ",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 80,),
            SizedBox(
                height: 300,
                width: 300,
                child: Image(
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=2048x2048&w=is&k=20&c=_yhJ8HvUCQo9VxRUNxdVduv815OfzyEXx4pnMfUUNzI="))),
          SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogInX()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      padding:
                      EdgeInsets.symmetric(horizontal:80 , vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUP()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      padding:
                      EdgeInsets.symmetric(horizontal:80 , vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text("Sign up")),
            ),


          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(const MaterialApp(
    home: LogX(),
    debugShowCheckedModeBanner: false,
  ));
}
