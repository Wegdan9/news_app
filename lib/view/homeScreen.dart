import 'package:flutter/material.dart';

import 'package:news_app/viewModel/articles_viewModel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     Provider.of<ArticlesViewModel>(context).FetchAllArticles();
     var x = Provider.of<ArticlesViewModel>(context).getArticles;
    print(x.first.title);
    return  Scaffold(
      body: Text(''),
    );
  }
}
