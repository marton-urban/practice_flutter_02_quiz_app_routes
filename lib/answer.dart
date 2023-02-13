import 'package:flutter/material.dart';
import 'quiz.dart';

class Answer extends StatelessWidget {
  const Answer(this.answer, this._infos, {Key? key}) : super(key: key);

  final Map<String, Object> answer;
  final Map<String, int> _infos;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answer['text'] as String),
        onPressed: () {
          _infos['totalScore'] =
              _infos['totalScore']! + (answer['score'] as int);
          if (_infos['questionIndex']! < Quiz.questions.length - 1) {
            _infos['questionIndex'] = _infos['questionIndex']! + 1;
            Navigator.of(context).pushReplacementNamed('/quiz');
          } else {
            Navigator.of(context).pushReplacementNamed('/result');
          }
        },
      ),
    );
  }
}
