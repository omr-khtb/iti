// ignore_for_file: prefer_const_constructors

import 'package:day_7/screens/product_details.dart';
import 'package:day_7/web_service/api_service.dart';
import 'package:day_7/model/movie.dart';
import 'package:day_7/model/TvShow.dart';
import 'package:day_7/model/product.dart';
import 'package:flutter/material.dart';

class TvShowslistpage extends StatefulWidget {
  const TvShowslistpage({super.key});

  @override
  State<TvShowslistpage> createState() => _TvShowslistpageState();
}

// LifeCyclehooks
class _TvShowslistpageState extends State<TvShowslistpage> {
  late Future<List<TvShow>> tvShow;
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tvShow = ApiService().getTVshow(currentPage);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        getMoreTV();
      } else if (_scrollController.position.pixels <=
          _scrollController.position.minScrollExtent) {
        getBeforeTV();
      }
    });
  }

  void getMoreTV() {
    setState(() {
      currentPage++;
      tvShow = ApiService().getTVshow(currentPage);
    });
  }

  void getBeforeTV() {
    setState(() {
      if (currentPage > 1) {
        currentPage--;
        tvShow = ApiService().getTVshow(currentPage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Tvshows Page'),
      ),
      body: FutureBuilder<List<TvShow>>(
        future: tvShow,
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
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text('No TV shows avaliable'),
            );
          }
          return ListView.builder(
            controller: _scrollController,
            itemBuilder: (context, index) {
              final tv = snapshot.data![index];
              return GestureDetector(
                onTap: () {},
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500${tv.posterPath}'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tv.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            tv.overview,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              );
            },
            itemCount: snapshot.data!.length,
          );
        },
      ),
    );
  }
}