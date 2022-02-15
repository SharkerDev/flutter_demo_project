import 'dart:convert';

import 'package:demo_flutter/data/models/article/article.dart';
import 'package:flutter/services.dart' show rootBundle;

class ArticlesRepository {
  List<Article>? _articles;

  Future<List<Article>?> getArticles() async {
    if (_articles == null) {
      final jsonString =
          await rootBundle.loadString('assets/json/articles.json');

      _articles = (json.decode(jsonString) as List<dynamic>)
          .map((e) => Article.fromJson(e))
          .toList();
    }

    return _articles;
  }
}
