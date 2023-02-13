import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this._infos, {Key? key}) : super(key: key);

  final Map<String, int> _infos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Ürömhegyi Quiz')),
        body: Center(
          child: Column(
            children: [
              Text('${_infos['totalScore']} pont',
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {
                  _infos['questionIndex'] = 0;
                  _infos['totalScore'] = 0;
                  Navigator.of(context).pushReplacementNamed('/quiz');
                },
                child: const Text(
                  'Restart Quiz',
                ),
              )
            ],
          ),
        ));
  }
}
