import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  final arguments = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final title = arguments[0];
    final description = arguments[1];

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Detail'),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Text(
              title,
            ),
            Text(
              description,
            ),
          ],
        ),
      ),
    );
  }
}
