import 'package:news_app/models/article_model.dart';

abstract class CategoryNewsState {}

class LoadingState extends CategoryNewsState {}

class GetCategoryNewsState extends CategoryNewsState {
  final List<ArticleModel> articles;
  final String category;

  GetCategoryNewsState({required this.category, required this.articles});
}

class ErrorInLoadingState extends CategoryNewsState {
  final String errorMessage;

  ErrorInLoadingState({required this.errorMessage});
}
