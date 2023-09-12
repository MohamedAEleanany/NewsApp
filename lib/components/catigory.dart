import 'package:flutter/material.dart';
import 'package:news_app_api/models/catigory_model.dart';
import 'package:news_app_api/pages/catiory_view.dart';

class CatigoryItem extends StatelessWidget {
  const CatigoryItem ({super.key, required this.catigoryInstance});
  final CatigoryModel catigoryInstance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CatiogryPage(catiogry: catigoryInstance.catigoryName,);
        },));
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10 , top: 10),
        child: Container(
          width: 200,
          height: 140,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              image:DecorationImage(image: AssetImage('${catigoryInstance.catigoryImage}'), fit: BoxFit.cover)
          ),
          child: Center(child: Text("${catigoryInstance.catigoryName}" , style: TextStyle(color: Colors.white , fontSize: 24 , fontFamily:'Odor Mean Chey'),)),
        ),
      ),
    );
  }
}
