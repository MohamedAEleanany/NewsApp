import 'package:flutter/material.dart';
import 'package:news_app_api/models/arcticle_model.dart';
import 'package:news_app_api/pages/news_tile.dart';
import 'package:news_app_api/services/news_services.dart';

class NewsTileBuilder extends StatefulWidget {
  const NewsTileBuilder({super.key , required this.catiogry});

  final String catiogry ;

  @override
  State<NewsTileBuilder> createState() => _NewsTileBuilderState();
}

class _NewsTileBuilderState extends State<NewsTileBuilder> {

  List<ArcticleModel> articles = [];



  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:NewsServeces().getNews(catiogry: widget.catiogry) ,
      builder:(context, snapshot) {
        if(snapshot.hasData)
          {
            return NewsTile(articles: snapshot.data ?? []);
          }else{
          return SliverFillRemaining(
            fillOverscroll: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }

      },);
  //  NewsTile(articles: articles,) ;
  }
}
