import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/buttons.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  void answerQuesion(String selectAnswer) {
    widget.onSelectAnswer(selectAnswer);
    currentIndex++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(width * 0.10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: width * .08,
            ),
            ...currentQuestion.getShuffledAnswer().map(
              (answer) {
                return MyButtons(
                    title: answer,
                    url: () {
                      answerQuesion(answer);
                    });
              },
            ),
            SizedBox(
              height: width * .1,
            ),
          ],
        ),
      ),
    );
  }
}
