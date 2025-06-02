import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://newsapi.org/v2';
  final String _apiKey = '2c5c8080808b4ddd8c7637f5436fe298';

  Future<List<ArticleModel>> getNews({String category = 'general'}) async {
    Response response = await _dio.get(
      '$_baseUrl/top-headlines?country=us&category=$category&apiKey=$_apiKey',
    );
    List<dynamic> articles = response.data['articles'];
    List<ArticleModel> articlesList =
        articles.map((article) => ArticleModel.fromJson(article)).toList();
    return articlesList;
  }
}
