class ArticleModel {
  final String imageSource;
  final String title;
  final String subTitle;

  ArticleModel({
    required this.imageSource,
    required this.title,
    required this.subTitle
  });

  factory ArticleModel.fromJson (Map<String, dynamic> articles){
    return ArticleModel(
      imageSource: articles['urlToImage'] ?? '',
      title: articles['title'] ?? '',
      subTitle: articles['description'] ?? ''
    );
  }
}