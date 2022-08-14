// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_quiz/result.dart';

import './quiz.dart';

// const = compile time constant - never change
// final = running time constant - never change at runtime

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
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
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
