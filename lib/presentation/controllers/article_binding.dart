import 'package:get/get.dart';
import 'package:getx_101/data/repositories/article_repository.dart';
import 'package:getx_101/domain/repositories/article_repository.dart';
import 'package:getx_101/presentation/controllers/article_controller.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ArticleRepository>(ArticleRepositoryImpl());
    Get.put(ArticleController());
  }
}
