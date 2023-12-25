import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_101/presentation/pages/detail_page.dart';
import 'package:getx_101/presentation/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/detail', page: () => DetailPage())
      ],
    );
  }
}
