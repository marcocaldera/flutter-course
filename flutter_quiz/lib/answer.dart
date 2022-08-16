import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(primary: Colors.amber),
        // style: ButtonStyle(
        //   // backgroundColor: MaterialStateProperty.all(Colors.blue),
        //   textStyle: MaterialStateProperty.resolveWith(
        //     (states) => const TextStyle(color: Colors.white),
        //   ),
        // ),
        child: Text(answerText),
      ),
    );
  }
}
