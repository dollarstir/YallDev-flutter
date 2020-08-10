// // import 'dart:wasm';

// import 'package:first_app/answer.dart';
// import 'package:flutter/material.dart';
// import './questions.dart';
// import './answer.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   static const questions = [
//     {
//       'questionText': 'What\s your name?',
//       'Answers': ['dollar', 'stir']
//     },
//     {
//       'questionText': 'Where do you come from?',
//       'Answers': ['Ghana', 'Togo']
//     },
//   ];

//   var _questionIdex = 0;

//   void _AnswerQuestion() {
//     setState(() {
//       _questionIdex += 1;
//     });
//     if (_questionIdex == questions.length) {
//       // setState(() {
//       //   _questionIdex = 0;
//       // });
//     }
//   }

//   void reset() {
//     setState(() {
//       _questionIdex = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         (
//         appBar: AppBar(
//           title: Text("Dollarsoft Enterprise"),
//           centerTitle: true,
//         ),
//         body: _questionIdex < questions.length
//             ? Column(
//                 children: [
//                   Questions(
//                     questions[_questionIdex]['questionText'],
//                   ),
//                   ...(questions[_questionIdex]['Answers'] as List<String>)
//                       .map((answer) {
//                     return Answers(_AnswerQuestion, answer);
//                     ;
//                   }).toList()
//                 ],
//               )
//             : Center(
//                 child: Stack(
//                   children: [
//                     Text(
//                       "You worn",
//                       style: TextStyle(
//                         color: Colors.lightGreen,
//                       ),
//                     ),
//                     Container(
//                       child: RaisedButton(
//                         child: Text("Start Again"),
//                         onPressed: reset,
//                       ),
//                       margin: EdgeInsets.all(10),
//                     )
//                   ],
//                 ),
//               ),
//       ),
//     );
//   }
// }
