import 'package:get/get.dart';
import 'package:getx_101/data/repositories/article_repository.dart';
import 'package:getx_101/presentation/controllers/article_controller.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArticleRepositoryImpl());
    Get.put(ArticleController());
  }
}
