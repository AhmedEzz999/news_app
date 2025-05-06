import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';

class FullArticleView extends StatelessWidget {
  const FullArticleView({super.key, required this.article});
  final ArticleModel article;
  Uri get url => Uri.parse(article.fullArticle);

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

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
              const SizedBox(height: 15),
              Text(
                'Source: ${article.source}',
                style: const TextStyle(fontSize: 25),
              ),
              TextButton(
                onPressed: _launchUrl,
                child: const Text(
                  'Full Article',
                  style: TextStyle(fontSize: 27),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
