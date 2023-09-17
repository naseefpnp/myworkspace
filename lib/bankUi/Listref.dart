
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListUi extends StatelessWidget {
  var text = [
    """CWDR/
    3216546546/46546""",
    """CWDP/
    3216541496/46546""",
    """CWDS/
    3216526546/42546""",
    """CWDF/
    3216534346/475663""",
  ];
  var subtext = [
    "10-6-2018",
    "18-4-2020",
    "22-6-2022",
    "05-4-2024",
  ];
  var trText = [
    "NPR:2500.0",
    "NPR:2400.0",
    "NPR:1500.0",
    "NPR:7500.0",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(4, (index) => Card(
        child: ListTile(
        title: Text(text[index]),
          subtitle: Text(subtext[index]),
          trailing: Text(trText[index]),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 10,
                height: 48,
                color: Colors.red,
              )
            ],
          ),
        ),
      )),
    );
  }
}
