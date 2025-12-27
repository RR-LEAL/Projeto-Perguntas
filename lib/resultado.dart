import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontos;
  final void Function()? quandoReiniciarQuestionario;

  Resultado(this.pontos, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    String frase;
    if (pontos >= 25) {
      frase = 'Excelente desempenho!';
    } else if (pontos >= 15) {
      frase = 'Bom trabalho!';
    } else if (pontos >= 5) {
      frase = 'Você pode melhorar.';
    } else {
      frase = 'Precisa se esforçar mais.';
    }
    return frase;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.blue),
          onPressed: quandoReiniciarQuestionario,
          child: Text("Reiniciar Questionário", style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
