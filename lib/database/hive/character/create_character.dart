import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class CreatePersonagem {
  @HiveField(0)
  final String nome;
  @HiveField(1)
  final String descricao;

  CreatePersonagem({
    required this.nome,
    required this.descricao,
  });
}
