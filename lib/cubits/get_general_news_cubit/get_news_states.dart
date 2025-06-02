import 'package:news_app/models/article_model.dart';

abstract class NewsState {}

class LoadingState extends NewsState {}

class GetNewsState extends NewsState {
  final List<ArticleModel> articles;

  GetNewsState({required this.articles});
}

class ErrorInLoadingState extends NewsState {
  final String errorMessage;

  ErrorInLoadingState({required this.errorMessage});
}
