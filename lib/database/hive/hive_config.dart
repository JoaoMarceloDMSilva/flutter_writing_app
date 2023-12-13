import 'dart:io';
import 'package:flutter_writing_app/database/hive/chapter/create_chapter.dart';
import 'package:flutter_writing_app/database/hive/character/create_character.dart';
import 'package:flutter_writing_app/database/hive/notes/create_note.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'myhistory/create_history.dart';

class HiveConfig {
  static start() async {
    Directory directory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(directory.path);
  }

  static Future<Box> _openBox() async {
    final recebeDocumento =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(recebeDocumento.path);
    return await Hive.openBox("CreateHistory");
  }

  static Future<void> insertHistory(CreateHistory createHistory) async {
    final box = await _openBox();
    await box.add(createHistory);
  }

  static Future<void> insertCharacter(CreatePersonagem createCharacter) async {
    final box = await _openBox();
    await box.add(createCharacter);
  }

  static Future<void> insertChapter(CreateChapters createChapter) async {
    final box = await _openBox();
    await box.add(createChapter);
  }

  static Future<void> insertNote(CreateNote createNote) async {
    final box = await _openBox();
    await box.add(createNote);
  }
  

  static Future<List<CreateHistory>> viewHistory() async {
    try {
      final caixa = await _openBox();
      if (caixa.isEmpty) {
        return [];
      } else {
        List<CreateHistory> listHistory = caixa.values.map((dynamic e) {
          if (e is CreateHistory) {
            return e;
          } else {
            throw const FormatException('Valor inesperado no box');
          }
        }).toList();
        return listHistory;
      }
    } catch (e) {
      print("Erro ao mostrar conquista ");
      return [];
    }
  }
}