import 'package:flutter/material.dart';
class Answers extends StatelessWidget {
  final Function selectHandler;
  final  String answerText;

  Answers(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(child: RaisedButton(
              child: Text(answerText),
              onPressed: selectHandler,
              color: Colors.lightBlue,
            ),
            width: double.infinity,
            
            
      
    );
  }
}