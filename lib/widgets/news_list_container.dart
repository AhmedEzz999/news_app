import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsListContainer extends StatelessWidget {
  const NewsListContainer({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(articleModel.imageSource)
            ),
            const SizedBox(height: 10),
            Text(
              articleModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              articleModel.subTitle,
              maxLines: 2,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
        ],
      ),
    );
  }
}