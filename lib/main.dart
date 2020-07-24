import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';


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

/*Even though we change the state our question still not change
* to change the question we have to tell flutter to what to change
* when we tap button*/
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print("Answer 1");
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "What's your favourite color?",
      "What's your favourite animal?",
      "What's your favourite food?"
    ];
    /*return MaterialApp(home: Text("Hello !"),);*/
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        /* body: Text("This is my Flutter App!"),*/
        //Adding more than one widget
        body: Column(
          children: [
            //Text(question[_questionIndex]),
            Question(question[_questionIndex]),
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
           Answer(_answerQuestion),
           Answer(_answerQuestion),
           Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
