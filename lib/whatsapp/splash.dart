import 'dart:async';

import 'package:flutter/material.dart';

import 'Home page.dart';


class Wsplash extends StatefulWidget {
  const Wsplash({super.key});

  @override
  State<Wsplash> createState() => _WsplashState();
}

class _WsplashState extends State<Wsplash> {
  @override
  void initState() {
  Timer(Duration(seconds: 5), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Homepage()));
  });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo/whatsapp-logo-png-2259.png")
            )
          ),
        )
      ),

    );
  }
}
void main(){
  runApp(MaterialApp(home:Wsplash(),
  debugShowCheckedModeBanner: false,));
}