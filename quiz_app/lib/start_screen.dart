import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({
    required this.startQuiz,
    super.key,
  });

  final void Function() startQuiz;

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              height: width * .8,
              color: Color.fromARGB(150, 255, 255, 255),
            ),
            SizedBox(
              height: width * .15,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                  color: Color.fromARGB(255, 226, 198, 248),
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: width * .15,
            ),
            TextButton.icon(
              style: const ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color: Color.fromARGB(255, 76, 5, 147)))),
              onPressed: () {
                print('object');
                widget.startQuiz();
              },
              icon: const Icon(
                Icons.arrow_right_alt_sharp,
                color: Color.fromARGB(150, 255, 255, 255),
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(
                    color: Color.fromARGB(150, 255, 255, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            )
          ]),
    );
  }
}
