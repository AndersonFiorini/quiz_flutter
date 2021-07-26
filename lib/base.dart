class BaseQuestoes {
  final List<Map<String, dynamic>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor preferida?',
      'resposta': [
        {
          'texto': 'Preto',
          'pontuacao': 10,
        },
        {
          'texto': 'Vermelho',
          'pontuacao': 5,
        },
        {
          'texto': 'Verde',
          'pontuacao': 3,
        },
        {
          'texto': 'Branco',
          'pontuacao': 1,
        },
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {
          'texto': 'Coelho',
          'pontuacao': 10,
        },
        {
          'texto': 'Cobra',
          'pontuacao': 5,
        },
        {
          'texto': 'Elefante',
          'pontuacao': 3,
        },
        {
          'texto': 'Leão',
          'pontuacao': 1,
        },
      ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'resposta': [
        {
          'texto': 'Leo',
          'pontuacao': 10,
        },
        {
          'texto': 'Maria',
          'pontuacao': 5,
        },
        {
          'texto': 'João',
          'pontuacao': 3,
        },
        {
          'texto': 'Pedro',
          'pontuacao': 1,
        },
      ],
    }
  ];

  List<Map<String, dynamic>> get perguntas {
    return this._perguntas;
  }
}
