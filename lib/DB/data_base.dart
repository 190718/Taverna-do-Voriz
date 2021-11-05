class ContactModel {
  String name = "";
  int lvl = 0;
  String classe = "";
  String forca = "";
  String constituicao = "";
  String dextresa = "";
  String inteligencia = "";

  ContactModel({
    required this.name,
    required this.lvl,
    required this.classe,
    required this.forca,
    required this.constituicao,
    required this.dextresa,
    required this.inteligencia,
  });

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
