import 'package:day_7/model/product.dart';
import 'package:day_7/web_service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:day_7/model/TvShow.dart';

class TVDetailsScreen extends StatelessWidget {
  TVDetailsScreen({super.key, required this.TVId});
  int TVId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Details'),
      ),
      body: FutureBuilder<TvShow>(
        future: ApiService().getEpsoidesById(TVId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
              color: Colors.pink,
            ));
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Exception ${snapshot.error}'),
            );
          }
          final TvShow = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage('https://image.tmdb.org/t/p/w500${TvShow.posterPath}'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  TvShow.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '${TvShow.voteAverage}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),
                  
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  TvShow.overview,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}