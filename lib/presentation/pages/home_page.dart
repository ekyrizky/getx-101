import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> dataList = [
    {'title': 'Item 1', 'description': 'Description for Item 1'},
    {'title': 'Item 2', 'description': 'Description for Item 2'},
    {'title': 'Item 3', 'description': 'Description for Item 3'},
    {'title': 'Item 4', 'description': 'Description for Item 4'},
    {'title': 'Item 5', 'description': 'Description for Item 5'},
    {'title': 'Item 6', 'description': 'Description for Item 6'},
    {'title': 'Item 7', 'description': 'Description for Item 7'},
    {'title': 'Item 8', 'description': 'Description for Item 8'},
    {'title': 'Item 9', 'description': 'Description for Item 9'},
    {'title': 'Item 10', 'description': 'Description for Item 10'},
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('GetX 101'),
      ),
      child: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          String title = dataList[index]['title']!;
          String description = dataList[index]['description']!;

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
  }
}
