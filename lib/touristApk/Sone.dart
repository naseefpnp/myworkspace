import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Home.dart';

class SoneT extends StatefulWidget {
  const SoneT({super.key});

  @override
  State<SoneT> createState() => _SoneTState();
}

class _SoneTState extends State<SoneT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/logo/tourism logo.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeP()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Background color
                    onPrimary: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Text("Login")),
            SizedBox(
              height: 20,
            ),
            Text("- OR -"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {

              },
              icon: FaIcon(FontAwesomeIcons.facebook),
              label: Text("Login with facebook"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent, // Background color
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),

            ),
            SizedBox(height: 30,),
            ElevatedButton.icon(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.instagram),
              label: Text("Login with instagram"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Background color
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(height: 30,),
            ElevatedButton.icon(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.google),
              label: Text("Login with Google"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Background color
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SoneT(),
    debugShowCheckedModeBanner: false,
  ));
}
