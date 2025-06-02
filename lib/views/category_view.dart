import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/get_category_news_cubit/get_category_news_cubit.dart';
import 'package:news_app/cubits/get_category_news_cubit/get_category_news_states.dart';
import 'package:news_app/widgets/category_news_builder.dart';

class CategoryView extends StatefulWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    super.initState();
    context.read<GetCategoryNewsCubit>().getCategoryNews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoryNewsCubit, CategoryNewsState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (state is GetCategoryNewsState) {
          return CategoryNewsBuilder(
            articles: state.articles,
            category: state.category,
          );
        } else if (state is ErrorInLoadingState) {
          return Center(child: Text('Error: ${state.errorMessage}'));
        } else {
          return const Center(
            child: Text('There is an error, try again later.'),
          );
        }
      },
    );
  }
}
