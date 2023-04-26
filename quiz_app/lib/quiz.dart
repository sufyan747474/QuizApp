import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];

  Widget? activScreen;

  @override
  void initState() {
    activScreen = StartScreen(startQuiz: switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activScreen = QuestionScreen(onSelectAnswer: chooseAnser);
    });
  }

  void chooseAnser(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activScreen = StartScreen(startQuiz: switchScreen);
        selectedAnswer = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 91, 4, 190),
            Colors.deepPurple,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: activScreen,
      ),
    );
  }
}
