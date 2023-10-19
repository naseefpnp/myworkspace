import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:myworkspace/stateManagement_using_Provider/model/movies.dart';

final List<Movies> movielist = List.generate(100, (index) => Movies(
  title: 'movie $index',
      time: '${Random().nextInt(100) + 60} minutes'));

class MovieProvider extends ChangeNotifier{

  final List<Movies> _movie = movielist;
  List <Movies> get movies => _movie;

  final List<Movies> _wishmovie = [];
  List<Movies> get moviewishlist => _wishmovie;

  void addtoWishList(Movies movieFromMainPage){
    _wishmovie.add(movieFromMainPage);
    notifyListeners();
}
void removeWishlist(Movies removeMovie){
    _wishmovie.remove(removeMovie);
    notifyListeners();
}
}