import 'package:flutter/material.dart';
import 'package:news_app/models/category_list.dart';
import 'package:news_app/widgets/category_container.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryContainer(categoryModel: categoryList[index]);
        },
      ),
    );
  }
}
