import 'package:flutter/material.dart';
import 'package:news_app/widgets/featured_news_container.dart';
import 'package:news_app/models/featured_news_model.dart';

class FeaturedNewsSection extends StatelessWidget {
  const FeaturedNewsSection({super.key});
  final List <FeaturedNewsModel> featuredNewsList = const [
    FeaturedNewsModel(
      text: 'Technology',
      image: 'assets/technology.jpeg'
    ),
    FeaturedNewsModel(
      text: 'Sports',
      image: 'assets/sports.avif'
    ),
    FeaturedNewsModel(
      text: 'Science',
      image: 'assets/science.avif'
    ),
    FeaturedNewsModel(
      text: 'Health',
      image: 'assets/health.avif'
    ),
    FeaturedNewsModel(
      text: 'Entertainment',
      image: 'assets/entertainment.avif'
    ),
    FeaturedNewsModel(
      text: 'Business',
      image: 'assets/business.avif'
    ),
    FeaturedNewsModel(
      text: 'General',
      image: 'assets/general.avif'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: featuredNewsList.length,
      itemBuilder:(context, index){
        return FeaturedNewsContainer(featuredNews: featuredNewsList[index],);
      }
      ),
    );
  }
}