import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({ Key key, this.total, this.restartQuiz }) : super(key: key);

  final int total;
  final Function restartQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
            ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 22,
              ),),
          ),
          onPressed: restartQuiz,
        ),
        SizedBox(height: 20),
        Text(
          'Total Points: $total',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber,
          )
        ),
        ],
      ),
    );
  }
}