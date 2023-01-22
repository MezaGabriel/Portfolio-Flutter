import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newsapp/src/models/news_models.dart';
import 'package:http/http.dart' as http;

final _URL_NEWS = 'newsapi.org';
final _APIKEY = 'd998fbda83ec4ee2a5309eed4cf7f015';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];
  NewsService() {
    this.getTopHeadlines();
  }

  getTopHeadlines() async {
    final url = Uri.https(_URL_NEWS, '/v2/top-headlines', {
      'apiKey': _APIKEY,
      'country': 'ar',
    });
    // final url = '$_URL_NEWS/-headlines?apiKey=$_APIKEY&country=ar';
    final resp = await http.get(url);
    // final Map<String, dynamic> newsResponse = json.decode(resp.body);
    // newsResponse.forEach((key, value) {
    //   final newsResponse = newsResponseFromJson(resp.body);
    //   // final tempNew = Article.fromJson(value);
    //   // tempNew. = key;
    //   this.headlines.addAll(newsResponse.articles);
    // });

    final newsResponse = newsResponseFromJson(resp.body);

    this.headlines.addAll(newsResponse.articles);
    notifyListeners();
  }
}
