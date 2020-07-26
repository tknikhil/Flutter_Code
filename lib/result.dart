import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrse {
    String resultText = "Survey Completed Your Spirited animal is";
    String spritedAnimal;
    if (resultScore <= 20) {
      spritedAnimal = "SPIDER";
    } else if (resultScore <= 40) {
      spritedAnimal = "ELEPHANT";
    } else if (resultScore <= 60) {
      spritedAnimal ="BEAR";
    } else {
      spritedAnimal = "TIGER";
    }
    return resultText + " " + spritedAnimal;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      resultPhrse,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center ,
    ));
  }
}
