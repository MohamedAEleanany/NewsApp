import 'package:flutter/material.dart';
import 'package:news_app_api/pages/news_tile_builder.dart';

class CatiogryPage extends StatelessWidget {
  const CatiogryPage({super.key , required this.catiogry});
  final String catiogry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsTileBuilder(catiogry:catiogry ),
        ],
      ),
    );
  }
}
