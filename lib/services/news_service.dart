import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  final String category;

  NewsService(this.dio, [this.category = 'general']);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=2c5c8080808b4ddd8c7637f5436fe298',
    );
    List<dynamic> articles = response.data['articles'];
    List<ArticleModel> articlesList =
        articles.map((article) => ArticleModel.fromJson(article)).toList();
    return articlesList;
  }
}
