import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class CreateNote {
  @HiveField(0)
  final String titulo;
  @HiveField(1)
  final String descricao;

  CreateNote({
    required this.titulo,
    required this.descricao,
  });
}
