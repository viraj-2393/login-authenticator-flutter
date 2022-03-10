import 'package:flutter/material.dart';
class Movies extends ChangeNotifier{
  final String title;
  final String director;
  final String genre;
  final int votes;
  final String language;
  final String stars;
  final int releaseDate;
  final String poster;
  final String views;

  Movies({
    required this.title,
    required this.director,
    required this.genre,
    required this.votes,
    required this.language,
    required this.stars,
    required this.releaseDate,
    required this.poster,
    required this.views
  });

  // factory Movies.fromJson(Map<String,dynamic> json){
  //   return Movies(
  //       title: json['result']['title'],
  //       director: json['result']['director'].join(','),
  //       genre: json['result']['genre'],
  //       votes: json['result']['totalVoted'],
  //       language: json['result']['language'],
  //       stars: json['result']['stars'].join(','),
  //       releaseDate: json['result']['releaseDate']
  //   );
  // }
}