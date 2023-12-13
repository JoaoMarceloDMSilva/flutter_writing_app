import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class CreateHistory {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String character;

  CreateHistory({
    required this.title,
    required this.character,
  });
}