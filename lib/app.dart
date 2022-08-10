import 'package:flutter/material.dart';
import 'package:jpmj_games_record/screens/home_screen.dart';
import 'package:jpmj_games_record/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '麻雀記録帳',
      theme: getThemeData(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
