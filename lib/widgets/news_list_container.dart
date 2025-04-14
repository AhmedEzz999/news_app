import 'package:flutter/material.dart';

class NewsListContainer extends StatelessWidget {
  const NewsListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network('https://media.istockphoto.com/id/1212012012/vector/breaking-news-isolated-vector-icon-sign-of-main-news-on-dark-world-map-background.jpg?s=612x612&w=0&k=20&c=a8gFWIOUbtQYc40M1Fj0r1JRekqBin-7dM2gCvzpa_8=')
            ),
            const SizedBox(height: 10),
            Text(
              'Global Economy Slows Down - Recent reports indicate a slowdown in global economic growth, with inflation and geopolitical tensions contributing to uncertainty in financial markets.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Scientists warn that global temperatures are reaching record highs, urging immediate action to combat climate change and reduce carbon emissions.',
              maxLines: 2,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
        ],
      ),
    );
  }
}