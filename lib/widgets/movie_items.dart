import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieItem extends StatelessWidget{
  final String title;
  final String director;
  final String genre;
  final int votes;
  final String language;
  final String stars;
  final int releaseDate;
  final String poster;
  final  String views;

  const MovieItem({Key? key,
    required this.title,
    required this.director,
    required this.genre,
    required this.votes,
    required this.language,
    required this.stars,
    required this.releaseDate,
    required this.poster,
    required this.views
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const Icon(Icons.arrow_drop_up_outlined,size: 30,),
                    Text(votes.toString()),
                    const Icon(Icons.arrow_drop_down,size: 30,)
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(poster,fit: BoxFit.contain,),
                ),
              ),
              Flexible(
              child:Container(
                padding: const EdgeInsets.all(10),
                child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: const TextStyle(fontSize: 20),),
                        const SizedBox(height: 10,),
                        Row(children: [const Text('Genre: ',style: TextStyle(color: Colors.grey),),Expanded(child: Text(genre,overflow: TextOverflow.ellipsis,))],),
                        Row(children: [const Text('Director: ',style: TextStyle(color: Colors.grey),),Expanded(child: Text(director,overflow: TextOverflow.ellipsis,))],),
                        Row(children: [const Text('Starring: ',style: TextStyle(color: Colors.grey),),Expanded(child: Text(stars,overflow: TextOverflow.ellipsis,),),],),
                        const SizedBox(height: 5,),
                        Row(children: [Text('${language} | '),Text('${ DateFormat('dd/MM/yyyy').format(DateTime.fromMicrosecondsSinceEpoch(releaseDate * 1000 * 1000))}'),],),
                        Row(children: [Text('${views} Views | ',style: TextStyle(color: Colors.blue),),Expanded(child:Text('Voted by ${votes} person',style: TextStyle(color: Colors.blue),overflow: TextOverflow.ellipsis,))],)
                      ],
                    )
                ),
              )
              ],
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){},
              child: const Text('Watch Trailer'),
            ),
          )

        ],
      ),
    );
  }
}