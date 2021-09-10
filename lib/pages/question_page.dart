import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_quizz/services/quizz_service.dart';
import 'package:tp_quizz/models/quizz.dart';
import 'option_page.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({
    Key? key,
    @required this.question,
  }) : super(key: key);

  final Quizz? question;

  @override
  Widget build(BuildContext context) {
    QuizzService _controller = Get.put(QuizzService());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question!.question!,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Color(0xFF101010)),
          ),
          SizedBox(height: 20.0 / 2),
          ...List.generate(
            question!.options!.length,
            (index) => Option(
              index: index,
              text: question!.options![index],
              press: () => _controller.checkAns(question!, index),
            ),
          ),
        ],
      ),
    );
  }
}
