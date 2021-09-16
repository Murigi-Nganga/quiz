import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _questionIndex = 0;
  int _totalPoints = 0;

  void _answerQuestion(int answer) {
    setState(() {
      this._totalPoints += answer;
      this._questionIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      this._questionIndex = 0;
      this._totalPoints = 0;
    });
  }

  var _questions = const[
    {
      'question': 'Which animal is mostly found in Australia?',
      'answers': [
        {'answerText': 'Whale','score': 10}, 
        {'answerText': 'Kangaroo','score': 20}, 
        {'answerText': 'Crocodile','score': 30}, 
        {'answerText': 'Zebra','score': 40}, 
      ]
    },
    {
      'question': 'Which is the largest lake in the world?',
      'answers': [
        {'answerText': 'Malawi','score': 10}, 
        {'answerText': 'Okavango','score': 20}, 
        {'answerText': 'Superior','score': 30}, 
        {'answerText': 'Victoria','score': 40}, 
      ]
    },
    {
      'question': 'Which is the tallest mountain in the world?',
      'answers': [
        {'answerText': 'Everest','score': 10}, 
        {'answerText': 'Usambara','score': 20}, 
        {'answerText': 'Elgon','score': 30}, 
        {'answerText': 'The Himalayas','score': 40}, 
      ]
    },
    {
      'question': 'Select a number?',
      'answers': [
        {'answerText': 34, 'score': 10}, 
        {'answerText': 56 ,'score': 20}, 
        {'answerText': 87,'score': 30}, 
        {'answerText': 90,'score': 40}, 
      ],
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _questionIndex < 3 ?
        Text('Question ${_questionIndex + 1}'):
        Text('Results'),
        centerTitle: true,
      ),
      body: _questionIndex < 3 ?
      Quiz(question: _questions[_questionIndex], answerQuestion:_answerQuestion) :
      Result(total: _totalPoints, restartQuiz: _restartQuiz,),
      );
  }
}
