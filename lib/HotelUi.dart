import 'package:flutter/material.dart';

class HotelUi extends StatefulWidget {
  const HotelUi({Key? key}) : super(key: key);

  @override
  State<HotelUi> createState() => _HotelUiState();
}

class _HotelUiState extends State<HotelUi> {
  var Clr = [
    Colors.pink,
    Colors.blue,
    Colors.orange,
  ];
  var text = [
    "Hotel",
    "Restaurant",
    "Cafe",
  ];
  var iCn = [
    Icon(Icons.bed),
    Icon(Icons.restaurant),
    Icon(Icons.local_cafe),
  ];

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
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Search For Your Location",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: TextField(
                              cursorColor: Colors.white10,
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                hintText: "Kakkanad , Kerala",
                                hintStyle: TextStyle(color: Colors.black),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      color: Clr[index],
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(text[index]),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: iCn[index],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: 3,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 5,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: 50),
                Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 350,
                        width: 360,
                        child: Card(),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 250,
                            width: 360,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1590073844006-33379778ae09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 18,
                        bottom: 120,
                        child: Container(
                          height: 40,
                          width: 40,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            "\$40",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      Positioned(
                          bottom: 70,
                          left: 20,
                          child: Text(
                            "Awsome Room Near Kakkanad",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                      Positioned(
                          bottom: 50,
                          left: 20,
                          child: Text(
                            "Kakkanad , kerala",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          )),
                      Positioned(
                        bottom: 20,
                        left: 18,
                        child: SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Icon(Icons.star,color: Colors.green,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Icon(Icons.star,color: Colors.green,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Icon(Icons.star,color: Colors.green,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Icon(Icons.star,color: Colors.green,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Icon(Icons.star,color: Colors.green,),
                              ),
                              Text("(150 Reviews)")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
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
