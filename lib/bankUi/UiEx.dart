import 'package:flutter/material.dart';
import 'Bgrid.dart';
import 'Listref.dart';
import 'stackref.dart';

class uiEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome! MAUSAM"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              CustomStackWidget(),
              SizedBox(
                width: 350,
                height: 35,
                child: Row(
                  children: [
                    Icon(Icons.spa,color: Colors.red,),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text("whould you like to?".toUpperCase(),style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 25,),
              SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: BGrid()),
              SizedBox(
                width: 350,
                height: 35,
                child: Row(
                  children: [
                    Icon(Icons.spa,color: Colors.red,),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text("Last Transactions".toUpperCase(),style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                  ],
                ),
              ),
             SizedBox(
                 height: 200,
                 width: double.infinity,
                 child: ListUi()),
            ]),
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: uiEx(),
    debugShowCheckedModeBanner: false,
  ));
}
