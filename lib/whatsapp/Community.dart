import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  final List<String> names = [
    "New community",
    "Luminar June 23 Community",
    "Announcement",
    "FLT B1 June 23 Sreedevi 1...",
  ];
  final List<String> chat = [
    "",
    "",
    "+91 9778044133 : http://www.youtu...",
    "Sreedevi: Sree Devi Is Inviting You t...",
  ];
  final List<IconData> pics = [
    Icons.people_alt,
    Icons.people_outline,
    Icons.announcement,
    Icons.person,
  ];
  final List<String> time = [
    "",
    "",
    "10/08/2023",
    "yesterday",
  ];
  final List<String> textCount = [
    "3",
    "5",
    "1",
    "2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              child: ListTile(
                  leading: Stack(children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                    ),
                    Positioned(
                      top: 2.5,
                      left: 2.5,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: Icon(
                          pics[index],
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.teal,
                        child: Text(
                          "+",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]),
                  title: Text(
                    names[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(chat[index]),
                  trailing: Text(time[index])),
            );
          } else if (index == 1) {
            return Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey),
                      child: Icon(
                        pics[index],
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(chat[index]),
                    trailing: Text(time[index])),
              ),
            );
          }else {
            return Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 8),
              child: ListTile(
                title: Text(
                  names[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(chat[index]),
                trailing: Text(time[index]),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    pics[index],
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
