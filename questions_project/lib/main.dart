import 'package:flutter/material.dart';

void main() {
  runApp(PerguntasApp());
}

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  int perguntaIndex = 0;

  void responder() {
    print("Pergunta Respondida !");
  }

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: const Text("Resposta 1"),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text("Resposta 2"),
            ),
          ],
        ),
      ),
    );
  }
}
