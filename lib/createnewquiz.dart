import 'package:flutter/material.dart';

class CreateNewQuiz extends StatefulWidget {
  const CreateNewQuiz({super.key});

  @override
  State<CreateNewQuiz> createState() => _CreateNewQuizState();
}

class _CreateNewQuizState extends State<CreateNewQuiz> {
  TextEditingController QuestionController = TextEditingController();
  TextEditingController Answercontroller = TextEditingController();
  TextEditingController optioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Quiz"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextField(
                    controller: QuestionController,
                    decoration: InputDecoration(
                      hintText: "Type Your Question",
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextField(
                    controller: Answercontroller,
                    decoration: InputDecoration(
                      hintText: "Type Your Answer Of the Question",
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextField(
                    controller: Answercontroller,
                    decoration: InputDecoration(
                      hintText: "Type Your Options",
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
