class PersonagemModel {
  String name = "";
  int lvl = 0;
  String classe = "";
  String forca = "";
  String constituicao = "";
  String dextresa = "";
  String inteligencia = "";

  PersonagemModel({
    required this.name,
    required this.lvl,
    required this.classe,
    required this.forca,
    required this.constituicao,
    required this.dextresa,
    required this.inteligencia,
  });

  factory PersonagemModel.fromMap(Map<String, dynamic> json) => PersonagemModel(
        lvl: json["lvl"],
        name: json["nome"],
        classe: json["classe"],
        forca: json["forca"],
      );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'lvl': lvl,
      'forca': forca,
      'classe': classe,
      'constituicao': constituicao,
      'dextresa': dextresa,
      'inteligencia': inteligencia,
    };
  }
}
