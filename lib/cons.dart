import 'package:flutter/material.dart';
import 'package:quiz_app01/questionmodel.dart';

var bgcolor = Colors.blueGrey[200];
var frColor = Colors.blueGrey[400];
var appbar = Colors.blueGrey[100];

List<QuestionModel> quizQuestions = [
  QuestionModel(
      Answer: "Sole",
      Options: ["Laces", "Leather", "Strap", "Sole"],
      Question: "Shoe always has _____________😂?"),
  QuestionModel(
      Answer: "Banja",
      Options: ["Grandson", "Son", "Banja", "Potei"],
      Question:
          "Imran Khan is your father mother grandson daughter. Therefore, Imran Khan is your"),
  QuestionModel(
      Answer: "Sham",
      Options: ["Rahul", "Prem", "Ram", "Sham"],
      Question:
          "Ram is shorter than Sham and taller than Prem. Prem is taller than Rahul. Who is the tallest?"),
  QuestionModel(
      Answer: "Towel",
      Options: ["Cotton", "Cloth", "Pad", "Towel"],
      Question: "What gets wetter the more it dries?"),
];
