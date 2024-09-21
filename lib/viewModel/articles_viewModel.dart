
import 'package:flutter/material.dart';
import 'package:news_app/models/fetch_articles.dart';

import '../models/article.dart';

class ArticlesViewModel with ChangeNotifier{

  List<Article>? _articles;

  List<Article> get getArticles => _articles!;

  Future<void> FetchAllArticles() async{
        FetchNews fetchNews = FetchNews();
          _articles = await fetchNews.fetchArticles();
          notifyListeners();
  }


}