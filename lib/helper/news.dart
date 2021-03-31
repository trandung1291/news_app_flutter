import 'dart:convert';

import 'package:app_news/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    var response = await http.get(Uri.parse('https://vietnamstock.net/wp-json/wp/v2/posts'));
    List data = jsonDecode(response.body);
    data.forEach((content) {
      //print(content['author']);
      news.add(
        ArticleModel(
          title: content['title']['rendered'],
          urlToImage:
              'https://vietnamstock.net/wp-content/uploads/2021/03/Goc-nhin-2603-Kha-nang-xuat-hien-luc-bat-djay-1.jpg',
          author: 'newsman',
          url: content['link'],
          description: content['excerpt']['rendered'],
          content: content['content']['rendered'],
          publishedAt: DateTime.parse(content['date']),
        ),
      );
    });
  }
}
