import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_container.dart';

class NewsListSection extends StatefulWidget {
  const NewsListSection({super.key});

  @override
  State<NewsListSection> createState() => _NewsListSectionState();
}

class _NewsListSectionState extends State<NewsListSection> {
  late Future<List<ArticleModel>> futureArticles;

  @override
  void initState() {
    super.initState();
    futureArticles = NewsService(Dio()).getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureArticles,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Center(child: Text('Error: ${snapshot.error}')),
            );
          } else if (snapshot.hasData) {
            final articles = snapshot.data!;
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return NewsListContainer(articleModel: articles[index]);
                },
                childCount: articles.length,
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(child: Text('No data available')),
            );
          }
        } else {
          return SliverToBoxAdapter(
            child: Center(child: Text('Loading...')),
          );
        }
      },
    );
  }
}