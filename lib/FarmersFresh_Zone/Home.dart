import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: FarmH(),
    debugShowCheckedModeBanner: false,
  ));
}

class FarmH extends StatefulWidget {
  const FarmH({Key? key}) : super(key: key);

  @override
  _FarmHState createState() => _FarmHState();
}

class _FarmHState extends State<FarmH> {
  int _currentIndex = 0;
var imagesGrid = [
  'https://images.unsplash.com/photo-1476837579993-f1d3948f17c2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
  'https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
  'https://plus.unsplash.com/premium_photo-1675040830227-9f18e88fd1f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1854&q=80',
  'https://images.unsplash.com/photo-1641561761190-82a43a00b04b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1543362906-acfc16c67564?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80',
  'https://images.unsplash.com/photo-1608131922243-00b9ae767eec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1958&q=80'
];
var names = [
  'Fruits',
  'Vegetables',
  'Exotic',
  'Fresh Cuts',
  'Nutrition Charges',
  'Packed Flavor'
];

  final List<Widget> _pages = [
    // Page1(),
    // Page2(),
    // Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0, top: 8, bottom: 8),
            child: FaIcon(
              FontAwesomeIcons.locationPin,
              size: 15,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Kochi",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
        backgroundColor: Colors.green,
        title: Text(
          "Farmers Fresh Zone".toUpperCase(),
          style: GoogleFonts.b612(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFFEDFDE5),
                          border: Border.all(color: Colors.grey)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "VEGETABLES",
                            style: TextStyle(color: Colors.green, fontSize: 13),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFFEDFDE5),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "FRUITES",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 13),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFFEDFDE5),
                            border: Border.all(color: Colors.grey)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "EXOTIC",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 13),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFFEDFDE5),
                            border: Border.all(color: Colors.grey)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "FRESH CUTS",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 13),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: [
                  Container(
                      decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1629567971554-0cc0883dd57b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80")),
                  )),
                  Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1604106701789-98a5aa51bc2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1911&q=80")))),
                  Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  ("https://images.unsplash.com/photo-1485963631004-f2f00b1d6606?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1975&q=80"))))),
                  Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  ("https://images.unsplash.com/photo-1496412705862-e0088f16f791?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"))))),
                ],
                options: CarouselOptions(
                  initialPage: 0,
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: .8,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: .2,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.briefcaseClock),
                          Text("30 min policy",style: TextStyle(color: Colors.green),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.phone),
                            Text("Traceability",style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.person),
                            Text("Local Sourcing",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Shop By Category",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 18),),
              ),
            ]),
          ),
         SliverGrid(delegate: SliverChildBuilderDelegate((context, index) =>Padding(
           padding: const EdgeInsets.all(8.0),
           child: Stack(
                children: [
                  SizedBox(
                    height: 150,
                    width: 120,
                    child: Card(),
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(imagesGrid[index]),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 30,
                      child: Text(names[index])),
                ],
              ),
         )),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,color: Colors.grey,),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.grey,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
