import 'package:flutter/material.dart';
import 'package:news_app/models/featured_news_model.dart';
import 'package:news_app/views/category_view.dart';

class FeaturedNewsContainer extends StatelessWidget {
  const FeaturedNewsContainer({super.key, required this.featuredNews});
  final FeaturedNewsModel featuredNews;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: featuredNews.category);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        width: 177,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(featuredNews.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            featuredNews.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
