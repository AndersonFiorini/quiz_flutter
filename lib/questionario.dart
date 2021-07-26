import 'package:flutter/material.dart';
import 'package:quiz_flutter/questao.dart';
import 'package:quiz_flutter/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, dynamic>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;
  const Questionario({
    Key? key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  }) : super(key: key);

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['resposta']
        : [];
    return Column(
      children: <Widget>[
        Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((e) => Resposta(
                  texto: e['texto'].toString(),
                  quandoSelecionado: () => quandoResponder(e['pontuacao']),
                ))
            .toList(),
      ],
    );
  }
}
