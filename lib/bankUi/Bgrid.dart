import 'package:flutter/material.dart';

class BGrid extends StatelessWidget {
  var icon = [
    Icon(Icons.home,color: Colors.red,),
    Icon(Icons.electrical_services,color: Colors.red,),
    Icon(Icons.payments,color: Colors.red,),
    Icon(Icons.attach_money,color: Colors.red,),
    Icon(Icons.calendar_today,color: Colors.red,),
    Icon(Icons.qr_code,color: Colors.red,),
  ];

  var name = [
    "Home",
    "Service",
    "Payments",
    "Transfer",
    "Schedules",
    "Scan Qr"
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: icon[index],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(name[index]),
                    ),
                  ],
                ),
              );
            },
            childCount: icon.length,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,

          ),
        ),
      ],
    );
  }
}
