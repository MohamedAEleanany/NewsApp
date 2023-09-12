import 'package:flutter/material.dart';
import 'package:news_app_api/components/catigory.dart';
import 'package:news_app_api/models/catigory_model.dart';

class CatigoriesItemPage extends StatelessWidget {
   CatigoriesItemPage({super.key});
  List<CatigoryModel> catigories =[
    CatigoryModel(catigoryName: 'Business', catigoryImage: 'assets/images/business.jpg'),
    CatigoryModel(catigoryName: 'Entertainment', catigoryImage: 'assets/images/entertain.jpg'),
    CatigoryModel(catigoryName: 'Sports', catigoryImage: 'assets/images/sports.jpg'),
    CatigoryModel(catigoryName: 'Science', catigoryImage: 'assets/images/sc.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) => CatigoryItem(catigoryInstance: catigories[index]) ,
          separatorBuilder: (context , index) => SizedBox(width: 12.0,),
          itemCount: catigories.length),
    );
  }
}
