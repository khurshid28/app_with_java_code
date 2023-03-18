import 'package:app_with_java_code/views/homeView.dart';
import 'package:flutter/material.dart';

class MyAppiWithJavaCode extends StatelessWidget {
  const MyAppiWithJavaCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}