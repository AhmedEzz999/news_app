class ArticleModel {
  final String imageSource;
  final String title;
  final String subTitle;
  final String source;
  final String fullArticle;

  ArticleModel({
    required this.imageSource,
    required this.title,
    required this.subTitle,
    required this.source,
    required this.fullArticle,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> articles) {
    return ArticleModel(
      imageSource:
          articles['urlToImage'] ??
          'https://media.istockphoto.com/id/1212012012/vector/breaking-news-isolated-vector-icon-sign-of-main-news-on-dark-world-map-background.jpg?s=612x612&w=0&k=20&c=a8gFWIOUbtQYc40M1Fj0r1JRekqBin-7dM2gCvzpa_8=',
      title: articles['title'] ?? '',
      subTitle: articles['description'] ?? '',
      source: articles['source']['name'] ?? '',
      fullArticle: articles['url'] ?? '',
    );
  }
}
