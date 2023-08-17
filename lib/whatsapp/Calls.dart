import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  var names = [
    "Midhun",
    "Joyal",
    "Fayis",
    "adhil",
    "faris",
  ];
  var pics = [
    "assets/people/midhun.jpg",
    "assets/people/joyal.jpg",
    "assets/people/fayis.jpg",
    "assets/people/Adhil.jpg",
    "assets/people/faris.jpg"
  ];
  var time = [
    "Today 12.12",
    "Today 07.45",
    "Today 05.52",
    "Yesterday 05.30",
    "Monday 05.10"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(Icons.link),
              ),
              title: Text(
                "Create call link",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              subtitle: Text("Share a link for your Whatsapp call"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Recent",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                if(index == 0 || index == 3){
                  return ListTile(
                    title: Text(names[index],style: TextStyle(color: Colors.red),),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.subdirectory_arrow_left, color: Colors.red,size: 17,),
                        Text(time[index]),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(pics[index]),
                    ),
                    trailing: Icon(Icons.call,color: Colors.teal,),
                  );
                }
                return ListTile(
                  title: Text(names[index]),
                  subtitle: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.subdirectory_arrow_right, color: Colors.teal,size: 17,),
                      Text(time[index]),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(pics[index]),
                  ),
                  trailing: Icon(Icons.call,color: Colors.teal,),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
