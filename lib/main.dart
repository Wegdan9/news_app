import 'package:flutter/material.dart';
import 'package:news_app/models/fetch_articles.dart';
import 'package:news_app/view/homeScreen.dart';
import 'package:news_app/viewModel/articles_viewModel.dart';
import 'package:provider/provider.dart';



void main (){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)  {
    //newsTest();
   return ChangeNotifierProvider<ArticlesViewModel>(
     create:  (context) => ArticlesViewModel(),
     child: MaterialApp(
       home: HomeScreen(),

     ),
   );
  }

    newsTest() async {
    FetchNews fetchNews = FetchNews();
    var news =  await fetchNews.fetchArticles();
    for(var neww in news!){
      print(neww.author);
    }
  }

}