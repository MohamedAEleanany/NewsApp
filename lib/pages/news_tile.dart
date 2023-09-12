import 'package:flutter/material.dart';
import 'package:news_app_api/components/news_item.dart';
import 'package:news_app_api/models/arcticle_model.dart';
import 'package:news_app_api/services/news_services.dart';

class NewsTile extends StatelessWidget {
   NewsTile({super.key ,required this.articles});

  List<ArcticleModel> articles = [];

  @override
  Widget build(BuildContext context) {
    return  SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
              (context, index) => NewsItem(arcticleModel: articles[index]),
        ));
  }
}

/*

*/

