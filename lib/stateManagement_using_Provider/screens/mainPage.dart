
import 'package:flutter/material.dart';
import 'package:myworkspace/stateManagement_using_Provider/provider/movieProvider.dart';
import 'package:myworkspace/stateManagement_using_Provider/screens/wishlistPage.dart';
import 'package:provider/provider.dart';

class MovieMain extends StatelessWidget {
  MovieMain({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovies = context.watch<MovieProvider>().moviewishlist;
    var movies = context.watch<MovieProvider>().movies;

    return Scaffold(
        appBar: AppBar(
          title: Text("Movies"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Wishlist()));
              }, icon: Icon(Icons.shopping_cart)),
            )
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          final currentmovie = movies[index];
          return Card(
            child: ListTile(
              title: Text(currentmovie.title),
              subtitle: Text(currentmovie.time!),
              trailing: IconButton(
                onPressed: () {
                  if (!wishmovies.contains(currentmovie)) {
                    context.read<MovieProvider>().addtoWishList(currentmovie);
                  } else {
                    context.read<MovieProvider>().removeWishlist(currentmovie);
                  }
                },
                icon: Icon(Icons.favorite),
                color: wishmovies.contains(currentmovie)
                    ? Colors.red
                    : Colors.grey,
              ),
            ),
          );
        }));
  }
}

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
    create: (BuildContext context) => MovieProvider(),
    child: MaterialApp(
      home: MovieMain(),
      debugShowCheckedModeBanner: false,
    ),
  ),);
}
