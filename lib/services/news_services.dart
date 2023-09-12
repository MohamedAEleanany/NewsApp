
import 'package:dio/dio.dart';
import 'package:news_app_api/models/arcticle_model.dart';

class NewsServeces{
  final Dio dio = Dio();



 Future<List<ArcticleModel>> getNews({required String catiogry}) async{

    Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apikey=05655afb2e844cb38f9691dd16dcef38&category=$catiogry');

    print(response.data.toString());

    Map<String , dynamic> jsonDate = response.data;

    List<dynamic> articles = jsonDate['articles'];

    List<ArcticleModel> articleList = [];

    for (var article in articles){
      ArcticleModel arcticleModel = ArcticleModel(image: article['urlToImage'!], title:article['title'!], Desc: article['description'!]);

      articleList.add(arcticleModel);

    }
    print(articleList);
    return articleList;
  }
}