import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tp_quizz/services/quizz_service.dart';
import 'package:url_launcher/url_launcher.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    QuizzService _qnController = Get.put(QuizzService());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Color(0xFF8B94BC)),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns! * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Color(0xFF8B94BC)),
              ),
              Spacer(flex: 3),
              ElevatedButton(
                onPressed: () {
                  launch('/');
                },
                child: Text("Restart"),
              )
            ],
          )
        ],
      ),
    );
  }
}
