import 'package:flutter/material.dart';
import 'package:ngdemo3/pages/mydrawer_page.dart';
import 'package:ngdemo3/pages/mypagerview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PagerViewPage(),
    );
  }
}
