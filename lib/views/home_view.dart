import 'package:flutter/material.dart';
import 'package:news_app/sections/featured_news_section.dart';
import 'package:news_app/sections/news_list_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title:
            RichText(
              text: TextSpan(
              text: 'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(color: Colors.orange)
                )
              ]
              ),
            ),
        ),
        body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: 
            CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: FeaturedNewsSection()),
                SliverToBoxAdapter(child: const SizedBox(height: 30)),
                NewsListSection(),
              ],
            ),
          ),
        ),
      );
  }
}