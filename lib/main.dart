import 'package:advanced_ibm_calculator/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: 'IBM Calcorator',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
      ),
    );
  }
}
