import 'package:getx_101/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<Articles> fetchArticle();
}
