import 'package:flutter/material.dart';
import 'package:quiz_app01/cons.dart';
import 'package:quiz_app01/quizscreen.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: frColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgcolor,
        title: Text(
          "Start Quiz",
          style: TextStyle(color: frColor),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()));
                      },
                      child: Text(
                        "Start Quiz",
                        style: TextStyle(color: frColor),
                      )))
            ],
          ),
        ],
      ),
    );
  }
}
