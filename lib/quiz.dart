import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.question,@required this.questionIndex,@required this.answerQuestion});
 @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text(question[_questionIndex]),
        Question(question[questionIndex]['question']),
        /* First way
            RaisedButton(child: Text('Answer 1!'), onPressed: null),*/
        //Second way
        /* RaisedButton(child: Text('Answer 1!'), onPressed: _answerQuestion),
            //Third way
            RaisedButton(
                child: Text('Answer 2!'), onPressed: () => print("Answer 2")),
            //passing to answerQuestion()
            //Fourth way
            RaisedButton(
                child: Text('Answer 3!'),
                onPressed: () {
                  //More than one line of code you can do here
                  print("Answer 3");
                }),*/
        /*Answer(_answerQuestion),
           Answer(_answerQuestion),
           Answer(_answerQuestion),*/

        /*Now select answer with particular question dynamically*/
        ...(question[questionIndex]['answer'] as List<Map<String,Object>>).map((answer){
          return Answer(() =>answerQuestion(answer['score']),answer['text']);
        }).toList()
      ],
    );
  }
}
