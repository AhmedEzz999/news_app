import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_container.dart';

class NewsListSection extends StatelessWidget {
  const NewsListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: NewsListContainer(),
          );
        }
      ),
    );
  }
}