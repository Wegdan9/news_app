
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/articles.dart';
import 'article.dart';


class FetchNews{


  Future<List<Article>?> fetchArticles()async {
    try{
      http.Response response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=c14e51373b4b422d9d8244fb6b27fdfc'));
      if(response.statusCode == 200){
        var fetchedData = jsonDecode(response.body);
        Articles articles = Articles.fromJson(fetchedData);
        List<Article> article = articles.articles!.map((e) => Article.fromJson(e)).toList();
        return article;
      }else{
      print("Status ${response.statusCode}");
      }

    }catch(e){
      print(e);
    }


  }
}