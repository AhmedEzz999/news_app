import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/get_general_news_cubit/get_news_cubit.dart';
import 'package:news_app/cubits/get_general_news_cubit/get_news_states.dart';
import 'package:news_app/widgets/news_builder.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  @override
  void initState() {
    super.initState();
    context.read<GetGeneralNewsCubit>().getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetGeneralNewsCubit, NewsState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (state is GetNewsState) {
          return NewsBuilder(articles: state.articles);
        } else if (state is ErrorInLoadingState) {
          return Center(child: Text('Error: ${state.errorMessage}'));
        } else {
          return const SliverFillRemaining(
            child: Center(child: Text('There is an error, try again later.')),
          );
        }
      },
    );
  }
}
