class CardContato {
  final String nome;
  final String celular;

  CardContato(this.nome, this.celular);

  @override
  String toString() {
    return "Nome: ${this.nome}\nCelular: ${this.celular}";
  }
}
