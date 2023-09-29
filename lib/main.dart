import 'package:flutter/material.dart';
import 'package:gameofthrones/src/views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Of Thrones',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
