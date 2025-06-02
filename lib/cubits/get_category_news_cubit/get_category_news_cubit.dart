import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/get_category_news_cubit/get_category_news_states.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';

class GetCategoryNewsCubit extends Cubit<CategoryNewsState> {
  GetCategoryNewsCubit() : super(LoadingState());

  void getCategoryNews({String category = 'general'}) async {
    try {
      final List<ArticleModel> articles = await NewsService().getNews(
        category: category,
      );
      emit(GetCategoryNewsState(articles: articles, category: category));
    } catch (e) {
      emit(ErrorInLoadingState(errorMessage: e.toString()));
    }
  }
}
