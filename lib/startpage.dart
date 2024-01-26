import 'package:flutter/material.dart';
import 'package:quiz_app01/cons.dart';
import 'package:quiz_app01/createnewquiz.dart';
import 'package:quiz_app01/quizscreen.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: frColor,
      floatingActionButton: Container(
        height: 60,
        width: 90,
        child: FloatingActionButton(
          backgroundColor: bgcolor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateNewQuiz()));
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.create),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Create New Quiz",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
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
