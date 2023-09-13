import 'package:fika_project/screens/coverView.dart';
import 'package:fika_project/screens/homeView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => CoverScreen(), // 표지 페이지를 기본 경로로 설정
      },
    );
  }
}
