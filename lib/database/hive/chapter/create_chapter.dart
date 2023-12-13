import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class CreateChapters {
  @HiveField(0)
  final String titulo;
  @HiveField(1)
  final String descricao;

  CreateChapters({
    required this.titulo,
    required this.descricao,
  });
}
