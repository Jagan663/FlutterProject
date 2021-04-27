import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  // String get resultPhrase {
  //   String resultText;

  //   if (resultScore <= 8) {
  //     resultText = 'You are awesome and innocent!';
  //   } else if (resultScore <= 12) {
  //     resultText = 'Pretty likeable!';
  //   } else if (resultScore <= 16) {
  //     resultText = 'You are ... strange?!';
  //   } else {
  //     resultText = 'You are so bad!';
  //   }
  //   return resultText;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            resultScore.toString(),
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
