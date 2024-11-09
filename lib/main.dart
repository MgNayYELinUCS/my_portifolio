import 'package:flutter/material.dart';
import 'package:my_portfolio/routing/app_router.dart';
import 'package:my_portfolio/utils/custom_scroll.dart';

void main() async {
  await Future.delayed(const Duration(seconds: 5)); // loading for web
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nay Ye Lin 365',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      routerConfig: router,
    );
  }
}
