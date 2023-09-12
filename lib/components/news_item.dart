import 'package:flutter/material.dart';
import 'package:news_app_api/models/arcticle_model.dart';

class NewsItem extends StatelessWidget {
   NewsItem({super.key , required this.arcticleModel});
  ArcticleModel arcticleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image(image: NetworkImage(arcticleModel.image?? 'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80')  ,width: double.infinity , height: 300,fit: BoxFit.fill),

          ),
          SizedBox(height: 10,),
          Text("${arcticleModel.title?? ''}" ,style: TextStyle(fontSize: 24), maxLines: 2,overflow: TextOverflow.ellipsis,),
          Text("${arcticleModel.Desc?? 'No Description'}" ,style: TextStyle(fontSize: 16 ,color: Colors.grey), maxLines: 2,overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}
