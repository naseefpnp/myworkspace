import 'package:flutter/material.dart';

class HotelUi extends StatefulWidget {
  const HotelUi({Key? key});

  @override
  State<HotelUi> createState() => _HotelUiState();
}

class _HotelUiState extends State<HotelUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blueAccent,
              floating: true,
              pinned: true,
              elevation: 0,
              leading: Icon(Icons.menu),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.favorite_border),
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      color: Colors.blue,
                      child: Text("Search for your location"),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0, // Make the TextField cover the entire width
                      child: Container(
                        height: 50,
                        width: 500, // Increase the width here
                        color: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: TextField(
                          cursorColor: Colors.white10,
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HotelUi(),
    debugShowCheckedModeBanner: false,
  ));
}
