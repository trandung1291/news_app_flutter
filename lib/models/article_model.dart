class ArticleModel {
  String author;
  String title;
  String url;
  String urlToImage;
  String content;
  String description;
  DateTime publishedAt;

  ArticleModel(
      {this.author,
      this.title,
      this.url,
      this.urlToImage,
      this.content,
      this.description,
      this.publishedAt});
}
