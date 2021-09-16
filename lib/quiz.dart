import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({ Key key, this.question, this.answerQuestion }) : super(key: key);

  final Map<String,Object> question;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Question(questionText: question['question']),
          SizedBox(height: 10),
          // Answer(answers: question['answers'], answerQuestion: answerQuestion,),
          // Answer(answers: question['answers'], answerQuestion: answerQuestion,),
          // Answer(answers: question['answers'], answerQuestion: answerQuestion,),
          // Answer(answers: question['answers'], answerQuestion: answerQuestion,),
          ...(question['answers'] as List<Map<String,Object>>).map((answer) => 
            Answer(answer: answer, answerQuestion: answerQuestion,)
          ).toList(),
        ]
      ),
    );
  }
}