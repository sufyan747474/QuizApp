import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String title;
  final VoidCallback url;

  const MyButtons({required this.title, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 31, 1, 95),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      onPressed: url,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }
}
