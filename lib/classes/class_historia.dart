class Historia {
  int? id;
  String titulo;

  Historia({this.id, required this.titulo});

  Map<String, dynamic> toMap() {
    return {'id': id, 'titulo': titulo};
  }

  factory Historia.fromMap(Map<String, dynamic> map) {
    return Historia(id: map['id'], titulo: map['titulo']);
  }
}
