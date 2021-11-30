personagem() {
  Personagem marco = Personagem();
  marco.nome = "Marco";
  marco.idade = 28;

  Personagem irene = Personagem();
  irene.nome = "Irene";
  irene.idade = 27;
}

class Personagem {
  String? nome;
  int? idade;

  void lista() {
    print('Personagens $this.nome');
  }
}
