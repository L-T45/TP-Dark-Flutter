import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_quizz/models/quizz.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tp_quizz/pages/barre_de_progression_page.dart';
import 'package:tp_quizz/pages/question_page.dart';
import 'package:tp_quizz/services/quizz_service.dart';

//import 'progress_bar.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuizzService _questionController = Get.put(QuizzService());
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ProgressBar(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Color(0xFF8B94BC)),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Color(0xFF8B94BC)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: 20),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionPage(
                      question: _questionController.questions[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
