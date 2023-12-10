import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  //Acesso Privado
  DB._();

  //Instância de DB
  static final DB instance = DB._();

  //Instância do SQLite
  static Database? _database;
  get database async {
    if (_database != null) return _database;
    return await _initDataBase();
  }

  _initDataBase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'apphistoria.db'),
      version: 1,
      onCreate: _onCreate,

    );
  }

  _onCreate(db, versao) async{
    await db.execute(_historia);
    await db.execute(_personagens);
    await db.execute(_capitulos);
    await db.execute(_notas);
  }

  String get _historia => '''
  CREATE TABLE Historia (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    descricao TEXT
  );

  ''';

  String get _personagens => '''
  CREATE TABLE Personagens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    descricao TEXT,
    historia_id INTEGER,
    FOREIGN KEY (historia_id) REFERENCES Historia(id)
  );

  ''';

  String get _capitulos => '''
  CREATE TABLE Capitulos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    conteudo TEXT,
    historia_id INTEGER,
    FOREIGN KEY (historia_id) REFERENCES Historia(id)
  );

  ''';

  String get _notas => '''
  CREATE TABLE Notas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    conteudo TEXT,
    historia_id INTEGER,
    FOREIGN KEY (historia_id) REFERENCES Historia(id)
  );

  ''';
}