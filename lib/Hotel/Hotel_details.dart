import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HDetails extends StatelessWidget {
  const HDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1025&q=80",
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Crown Plaza",
                      style: GoogleFonts.fahkwang(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "8.5/84 reviews",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.favorite_border, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250,
              left: 20,
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star, color: Colors.grey),
                    ],
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.edit_location, color: Colors.grey, size: 20),
                  SizedBox(width: 5),
                  Text(
                    "8 km to Lulu Mall",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 280,
              right: 20,
              child: Row(
                children: [
                  Text(
                    "\$200",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "/per night",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 330, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Crown plaza Palm Grove",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    """Hotel Plaza is located in the city centre, in Lisbon’s main business and shopping
                  district. This renovated 5-star hotel combines the art and tradition of hospitality with all
                  the facilities and services of an international unit. 303 rooms and suites with
                  a panoramic terrace, completely soundproof, comfortably decorated and well
                  equipped, guarantee a comfortable stay. The hotel offers 2 restaurants and 2 bars:
                  Grill D. Fernando with a panoramic view, and the Coffee Shop Rendez-Vous. A
                  modern business centre, equipped with the latest technology, and wireless internet
                  access in all meeting rooms and public areas. To make your stay even more
                  enjoyable, the Altis offers a Health Club, heated swimming pool, shopping area,
                  hairdresser, 24 hours room service, laundry, and parking.""",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
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
    home: HDetails(),
  ));
}
