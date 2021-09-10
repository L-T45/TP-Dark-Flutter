import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_quizz/services/quizz_service.dart';
import 'package:tp_quizz/pages/quizz_page.dart';

class QuizzScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuizzService _controller = Get.put(QuizzService());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: QuizzPage(),
    );
  }
}
