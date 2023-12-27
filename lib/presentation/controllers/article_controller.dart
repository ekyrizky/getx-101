import 'package:get/get.dart';
import 'package:getx_101/domain/entities/article.dart';
import 'package:getx_101/domain/repositories/article_repository.dart';

class ArticleController extends GetxController {
  final ArticleRepository _articleRepository = Get.find();

  var articles = RxList<Article>([]);

  fetchArticle() async {
    final response = await _articleRepository.fetchArticle();
    articles.assignAll(response.articles);
  }
}
