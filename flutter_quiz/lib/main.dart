// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// const = compile time constant - never change
// final = running time constant - never change at runtime

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        "questionText": "What's your favorite color?",
        "answers": ["Black", "Red", "Green", "White"],
      },
      {
        "questionText": "What's your favorite animal?",
        "answers": ["Rabbit", "Snake", "Elephant", "Lion"],
      },
      {
        "questionText": "Who's your favorite instructor?",
        "answers": ["Marco", "Max"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questionText: questions[_questionIndex]["questionText"] as String,
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList(),
          ],
        ),
      ),
    );
  }
}
