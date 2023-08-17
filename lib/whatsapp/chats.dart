import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Chats extends StatefulWidget {


  @override
  State<Chats> createState() => _ContactsState();
}

class _ContactsState extends State<Chats> {
  var names = [
    "Midhun",
    "Joyal",
    "Fayis",
    "adhil",
    "faris",
  ];
  var chat = [
    "ok",
    "evde?",
    "okdaaaaa:)",
    "haa",
    "loooooooooooo!!"
  ];
  var pics = [
    "assets/people/midhun.jpg",
    "assets/people/joyal.jpg",
    "assets/people/fayis.jpg",
    "assets/people/Adhil.jpg",
    "assets/people/faris.jpg"
  ];
  var time =[
    "12.12",
    "07.45",
    "05.52",
    "05.30",
    "05.10"
  ];
  var textCount = [
    "2",
    "1",
    "1",
    "2",
    "8"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
          children: List.generate(5, (index) => Container(
            child: ListTile(

              title: Text(names[index]),
              subtitle: Text("${chat[index]}"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(pics[index]),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Text(time[index]),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: CircleAvatar(
                      child: Text(textCount[index],style: TextStyle(fontSize: 13),),
                      backgroundColor: Colors.teal,
                      radius: 9,

                    ),
                  )
                ],
              ),
            ),
          ))
      ),
    );
  }
}
