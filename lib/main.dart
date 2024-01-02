import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/presentation/home_page.dart';
import 'package:my_portfolio/utils/custom_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portifolio',
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomePage(),
    );
  }
}
