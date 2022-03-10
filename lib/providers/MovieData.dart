import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/movies.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MovieData with ChangeNotifier{
  List<Movies> _items = [];
 Future<void> fetchMovies() async{
   final url = Uri.parse('https://hoblist.com/api/movieList');

   Map data = {
     "category": "movies",
     "genre":"all",
     "language":"kannada",
     "sort":"voting"
   };
   //encode Map to JSON
   try{
     var body = json.encode(data);

     var response = await http.post(url,headers: {"Content-Type": "application/json"},body: body);
     final extractedData = json.decode(response.body) as Map<String,dynamic>;
     final List<Movies> movies = [];
     //print(extractedData['result'][0]['title']);
     var mList = extractedData['result'];
     mList.forEach((result){movies.add(Movies(
             title: result['title'],
             director: result['director'].join(','),
             genre: result['genre'],
             stars: result['stars'].join(','),
             votes: result['totalVoted'],
             language: result['language'],
             releaseDate: result['releasedDate'],
             poster: result['poster'],
             views: result['pageViews'].toString()
       ));
     });
     _items = movies;
     notifyListeners();
     // extractedData.forEach((key, result) {
     //   movies.add(Movies(
     //       title: result['title'],
     //       director: result['director'],
     //       genre: result['genre'],
     //       stars: result['stars'].join(','),
     //       votes: result['totalVoted'] as String,
     //       language: result['language'],
     //       releaseDate: result['releaseDate'],
     //       poster: result['poster']
     //   ));
     //   _items = movies;
     //   notifyListeners();
     // });
   }catch(error){
     rethrow;
   }

 }

  List<Movies> get items{
    return [..._items];
  }
}