import 'package:getx_101/domain/entities/article.dart';
import 'package:json_annotation/json_annotation.dart';
part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel extends Article {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  ArticleModel({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}

class ArticlesModel extends Articles {
  ArticlesModel({
    required this.articles,
  }) : super(articles: articles);

  final List<ArticleModel> articles;

  @override
  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        articles:
            List.from(json["articles"].map((x) => ArticleModel.fromJson(x))),
      );
}
