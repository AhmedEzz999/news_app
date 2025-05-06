import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class FullArticleView extends StatelessWidget {
  const FullArticleView({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Full Article'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.network(article.imageSource),
              const SizedBox(height: 20),
              Text(
                article.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Text(
                article.subTitle,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Source', style: TextStyle(fontSize: 27)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
