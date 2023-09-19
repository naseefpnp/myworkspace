import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsP extends StatelessWidget {
  const DetailsP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "Most Beautiful Places & Peaceful Natural Places",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 5.0),
                  Text("4.7 rating"),
                ],
              ),
              trailing: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1587596098435-226eb0818bb7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1935&q=80"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Text("About places",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ultrices orci ac lectus efficitur, ut vehicula elit facilisis. Sed ut eleifend nunc.",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(height: 30.0),
            Text("Special Fecilities",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            SizedBox(height: 20,),
            SizedBox(
              height: 30,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FaIcon(FontAwesomeIcons.parking,color: Colors.blue,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Parking",style: TextStyle(color: Colors.blue),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: FaIcon(FontAwesomeIcons.hireAHelper,color: Colors.blue,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("24X7 Support",style: TextStyle(color: Colors.blue),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: FaIcon(FontAwesomeIcons.wifi,color: Colors.blue,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Free Wifi",style: TextStyle(color: Colors.blue),),
                  ),
                ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1590073844006-33379778ae09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 20,),
            Text("Special Fecilities",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            SizedBox(height: 20,),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 80 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Adult"),
                        Text("02")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 40,
                      width: 80 ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Adult"),
                          Text("02")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 40,
                      width: 80 ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Adult"),
                          Text("02")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 40,
                      width: 80 ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Adult"),
                          Text("02")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsP()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Background color
                      onPrimary: Colors.white, // Text color
                      padding: EdgeInsets.symmetric(horizontal: 140, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3))),
                  child: Text("Explore Now")),
            ),
          ],
        ),
      ),
    );
  }
}
