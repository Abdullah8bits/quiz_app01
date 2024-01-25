import 'package:flutter/material.dart';
import 'package:quiz_app01/cons.dart';
import 'package:quiz_app01/questionmodel.dart';
import 'package:quiz_app01/resultscreen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var sahianswer = '';
  PageController pageController = PageController();
  bool isAnswerlocked = false;
  int currentindex = 0, CorrectAnswers = 0, WrongAnswer = 0;
  String correctAnswer = "", SelectedAnswer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: frColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: bgcolor,
          title: Text(
            "Play Quiz",
            style: TextStyle(color: frColor),
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            if (sahianswer != "") {
              sahianswer = "";
            }
            if (isAnswerlocked) {
              if (SelectedAnswer == correctAnswer) {
                print("Good");
                CorrectAnswers++;
                print(
                    "Correct Answer is $correctAnswer And You Won $CorrectAnswers Points");
              } else {
                WrongAnswer++;
                print(
                    '$SelectedAnswer is Wrong Answer You Lose $WrongAnswer Point You have To Win the Match');
              }
              currentindex++;
              if (currentindex != quizQuestions.length) {
                pageController.jumpToPage(currentindex);
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              won: CorrectAnswers,
                              Wrong: WrongAnswer,
                            )));
              }
            } else {
              print("select Answer");
            }
          },
          child: Container(
            alignment: Alignment.center,
            color: bgcolor,
            height: 60,
            child: Text(
              "Next",
              style: TextStyle(fontSize: 20, color: frColor),
            ),
          ),
        ),
        body: PageView.builder(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              QuestionModel model = quizQuestions[index];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(model.Question),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (SelectedAnswer != correctAnswer) {
                                      sahianswer =
                                          "The Seleted Answer $SelectedAnswer is Wrong Kindly Select the Correct Answer Otherwise Tap On Next To Proccede To Next Question";
                                    } else {
                                      sahianswer =
                                          "Excellent The Correct Answer is  =  $SelectedAnswer";
                                    }
                                    isAnswerlocked = true;
                                    SelectedAnswer = model.Options[index];
                                    correctAnswer = model.Answer;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:
                                          SelectedAnswer == model.Options[index]
                                              ? bgcolor
                                              : frColor,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 50,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(model.Options[index]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("$sahianswer"),
                  ],
                ),
              );
            }));
  }
}
