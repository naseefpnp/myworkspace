import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: 230,
        ),
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: SizedBox(
            height: 200,
            width: 355,
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            "Naseef pnp",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            "NPR. 1000225.40",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text("34558264789",style: TextStyle(fontSize: 15),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
