import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({ Key key, this.answerQuestion, this.answer }) : super(key: key);

  final Function answerQuestion;
  final Map<String,Object> answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: Colors.deepOrange,
        child: Text(answer['answerText']),
        onPressed: () => answerQuestion(answer['score']),
      ),
    );
  }
}