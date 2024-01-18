import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelect;

  const Resposta(this.texto, this.onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan, // cor de fundo
          foregroundColor: Colors.white, // cor do texto
        ),
        onPressed: onSelect,
        child: Text(texto),
      ),
    );
  }
}
