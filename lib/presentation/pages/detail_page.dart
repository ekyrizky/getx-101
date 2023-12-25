import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String description;

  const DetailPage({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
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
