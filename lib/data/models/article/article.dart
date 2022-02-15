import 'package:freezed_annotation/freezed_annotation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String imageUrl,
    required List<String> paragraph,
    String? title,
    String? subTitle,
  }) = _Article;

  const Article._();

  @JsonSerializable(explicitToJson: true)
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
