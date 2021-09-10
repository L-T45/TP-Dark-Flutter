import 'package:flutter/material.dart';
import 'package:tp_quizz/pages/home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: HomePage(),
    );
  }
}
