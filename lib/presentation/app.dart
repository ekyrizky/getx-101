import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_101/presentation/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      initialRoute: '/',
      home: HomePage(),
    );
  }
}
