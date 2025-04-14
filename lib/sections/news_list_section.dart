import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_container.dart';

class NewsListSection extends StatelessWidget {
  const NewsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
          childCount: 10,
          (context, index) {
            return NewsListContainer();
          })
        );
  }
}