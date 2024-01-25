import 'package:flutter/material.dart';
import 'package:quiz_app01/cons.dart';

class ResultScreen extends StatelessWidget {
  int won;
  int Wrong;

  ResultScreen({super.key, required this.Wrong, required this.won});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: frColor,
      appBar: AppBar(
        title: Text("Result"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                    color: bgcolor, borderRadius: BorderRadius.circular(20)),
                child: Text('You W❤️n $won Points'),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                    color: bgcolor, borderRadius: BorderRadius.circular(20)),
                child: Text('You L😁😁se $Wrong Points'),
              )
            ],
          )
        ],
      ),
    );
  }
}
