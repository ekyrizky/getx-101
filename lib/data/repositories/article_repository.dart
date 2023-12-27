import 'package:getx_101/data/models/article_model.dart';
import 'package:getx_101/data/providers/network/services/article_service.dart';
import 'package:getx_101/domain/entities/article.dart';
import 'package:getx_101/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<Articles> fetchArticle() async {
    final response = await ArticleService().request();
    return ArticlesModel.fromJson(response);
  }
}
