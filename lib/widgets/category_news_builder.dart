import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_container.dart';

class CategoryNewsBuilder extends StatelessWidget {
  final List<ArticleModel> articles;
  final String category;
  const CategoryNewsBuilder({super.key, required this.articles, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          '${category[0].toUpperCase()}${category.substring(1)} News',
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: NewsContainer(articleModel: articles[index]),
          );
        },
      ),
    );
  }
}
