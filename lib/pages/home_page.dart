import 'package:flutter/material.dart';
import 'package:news_app_api/components/catigory.dart';
import 'package:news_app_api/components/news_item.dart';
import 'package:news_app_api/models/catigory_model.dart';
import 'package:news_app_api/pages/catigory_item_page.dart';
import 'package:news_app_api/pages/news_tile.dart';
import 'package:news_app_api/pages/news_tile_builder.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(image: AssetImage('assets/images/logotype.png' ), height: 44, width: 44,),
          Text("News" , style: TextStyle(color: Colors.black , fontFamily:'Kaushan Script' , fontSize: 24),),
          Text("Cloud" , style: TextStyle(color: Colors.amber , fontFamily:'Kaushan Script' ,fontSize: 24),),
        ],),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
         SliverToBoxAdapter(child: CatigoriesItemPage(),),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),

          NewsTileBuilder(catiogry: 'general'),

        ],
      ),
    );
  }
}
