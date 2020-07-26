import 'package:flutter/material.dart';
import 'package:flutter_task_01/result.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

/*void main(){
runApp(MyApp());
}*/
void main() => runApp(MyApp());

/*The problem with this StatelessWidget is we are unable to render in question variable
* to overcome from this problem we change from StatelessWidget to StatefulWidget be following way*/
//class MyApp extends StatelessWidget {
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); //return object
  }
}

/*by changing from MyAppState to _MyAppState we change class from public to private*/
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore=0;
/*Even though we change the state our question still not change
* to change the question we have to tell flutter to what to change
* when we tap button*/

  /**/
  final _question = const [
    {
      'question': "What's your favourite Color?",
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 15}
      ]
    },
    {
      'question': "What's your favourite Animal?",
      'answer': [
        {'text': 'Dog', 'score': 20},
        {'text': 'Cat', 'score': 15},
        {'text': 'Rat', 'score': 5},
        {'text': 'Parrot', 'score': 10}
      ]
    },
    {
      'question': "What's your favourite Food?",
      'answer': [
        {'text': 'Chicken', 'score': 20},
        {'text': 'Fish', 'score': 15},
        {'text': 'Milk', 'score': 5},
        {'text': 'Vegetable', 'score': 10}
      ]
    },
    {
      'question': "What's your favourite Drink?",
      'answer': [
        {'text': 'Coca-Cola', 'score': 20},
        {'text': 'Fenta', 'score': 5},
        {'text': 'Coffee', 'score': 15},
        {'text': 'Tea', 'score': 10}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex += 1;
    });
    print("Answer 1");
  }

  @override
  Widget build(BuildContext context) {
    /*final vs const
    * const variable vs const value */
    /*   const question = [
      */ /*"What's your favourite color?",
      "What's your favourite animal?",s
      "What's your favourite food?"*/ /*

      */ /*Now we use map*/ /*
      {'question':"What's your favourite Color?",'answer':['Black','Red','Blue','Green']},
      {'question':"What's your favourite Animal?",'answer':['Dog','Cat','Rat','Parrot']},
      {'question':"What's your favourite Food?",'answer':['Chicken','Fish','Milk','Vegetable']},
      {'question':"What's your favourite Drink?",'answer':['Coca-Cola','Fenta','Coffee','Tea']}
    ];*/
    /*return MaterialApp(home: Text("Hello !"),);*/
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        /* body: Text("This is my Flutter App!"),*/
        //Adding more than one widget
        //ternary operater to handle the question doesn't goes more than its given
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
