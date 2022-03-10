import 'package:flutter/material.dart';
import 'package:geeksynergy/providers/MovieData.dart';
import 'package:provider/provider.dart';
import '../models/movies.dart';
import '../widgets/movie_items.dart';
import './company_info.dart';
class MovieScreen extends StatelessWidget{
  static const routeName = "/movie-screen";
 @override
  Widget build(BuildContext context) {
   List<Movies> movies = [];
   String username = '';
   Provider.of<MovieData>(context).fetchMovies();
   movies = Provider.of<MovieData>(context).items;
   //username Provider.of<UserData>(context).name;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        centerTitle: true,
        backgroundColor: const Color(0xFF3F4072),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF3F4072),
        child: Scaffold(
          appBar: AppBar(
            title: Text(username != ''? 'Hello ${username}' : 'Hello Friend!'),
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xFF3F4072),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  leading: const Icon(Icons.explore_outlined),
                  title:GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed(CompanyInfo.routeName);
                      },
                      child: const Text('Company Info',style:  TextStyle(color: Colors.grey,fontSize: 18),),
                    ),

                  trailing: const Icon(Icons.keyboard_arrow_right),
                ),
                Divider()

              ]

          ),
        ),
      ),
      body: movies.isEmpty ? const Center(
        child: CircularProgressIndicator(),
      ) : Container(
        child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (ctx,index)=>
                Column(
                  children: [
                    MovieItem(title: movies[index].title,
                        director: movies[index].director,
                        genre: movies[index].genre,
                        votes: movies[index].votes,
                        language: movies[index].language,
                        stars: movies[index].stars,
                        releaseDate: movies[index].releaseDate,
                        poster: movies[index].poster,
                        views: movies[index].views
                    ),
                    Divider()
                    // Image.network(movies[index].poster),
                    // Text(movies[index].title),
                    // Text(movies[index].director)
                  ],
                )

        ),
      )

    );
  }
}