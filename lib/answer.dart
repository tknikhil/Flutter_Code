import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function slelectHandler;
  final String answerText;

  Answer(this.slelectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: slelectHandler,
      ),
    );
  }
}
