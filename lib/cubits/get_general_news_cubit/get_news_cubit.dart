import 'package:bloc/bloc.dart';
import 'package:news_app/cubits/get_general_news_cubit/get_news_states.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';

class GetGeneralNewsCubit extends Cubit<NewsState> {
  GetGeneralNewsCubit() : super(LoadingState());

  void getGeneralNews() async {
    try {
      final List<ArticleModel> articles = await NewsService().getNews();
      emit(GetNewsState(articles: articles));
    } catch (e) {
      emit(ErrorInLoadingState(errorMessage: e.toString()));
    }
  }
}
