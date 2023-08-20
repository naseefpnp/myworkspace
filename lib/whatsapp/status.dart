import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Status extends StatefulWidget {
  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  var names = ["Adhil", "Faris", "Fayis", "joyal", "Midhun"];
  var time = [
    "2 minutes ago",
    "10 minutes ago",
    "15 minutes ago",
    "32 minutes ago",
    "Today 12.22"
  ];
  var pics = [
    "assets/people/Adhil.jpg",
    "assets/people/faris.jpg",
    "assets/people/fayis.jpg",
    "assets/people/joyal.jpg",
    "assets/people/midhun.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 3, top: 6),
              child: ListTile(
                leading: Stack(children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/people/luffy.jpg"),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: SizedBox(
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.teal,
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  )
                ]),
                title: Text("My status"),
                subtitle: Text("Tap to add status update"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              child: Text("Recent Updates"),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                  subtitle: Text(time[index]),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(pics[index]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 43,
            width: 43,
            child: FloatingActionButton(
              onPressed: () {},
              child: FaIcon(FontAwesomeIcons.pencil,color: Colors.teal,),
              backgroundColor: Color.fromARGB(255, 136, 203, 197),
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.camera_alt,color: Colors.white,),
              backgroundColor: Colors.teal,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
