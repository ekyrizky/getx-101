import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_101/presentation/controllers/article_controller.dart';

class HomePage extends GetView<ArticleController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: controller,
      initState: (state) => controller.fetchArticle(),
      builder: (controller) {
        return CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('GetX 101'),
          ),
          child: ListView.builder(
            itemCount: controller.articles.length,
            itemBuilder: (context, index) {
              String title = controller.articles[index].author ?? "author";
              String description = controller.articles[index].title ?? "title";

              return CupertinoListTile(
                title: Text(title),
                subtitle: Text(description),
                onTap: () {
                  Get.toNamed('/detail', arguments: [title, description]);
                },
              );
            },
          ),
        );
      },
    );
  }
}
