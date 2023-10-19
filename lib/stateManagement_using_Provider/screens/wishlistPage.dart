import 'package:flutter/material.dart';
import 'package:myworkspace/stateManagement_using_Provider/provider/movieProvider.dart';
import 'package:provider/provider.dart';

class Wishlist extends StatelessWidget {
  Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovies = context
        .watch<MovieProvider>()
        .moviewishlist;
    return Scaffold(
      appBar: AppBar(
        title: Text('My WishList ${wishmovies.length}'),
      ),
      body: ListView.builder(itemCount: wishmovies.length,
          itemBuilder: (context, index) {
        var selectedmovie = wishmovies[index];
            return Card(
              child: ListTile(
                title: Text(selectedmovie.title),
                subtitle: Text(selectedmovie.time!),
                trailing: IconButton(onPressed: (){
                  context.read<MovieProvider>().removeWishlist(selectedmovie);
                }, icon: Icon(Icons.remove)),
              ),
            );
          }),
    );
  }
}
