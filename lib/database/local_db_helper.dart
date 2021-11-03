import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sms/models/poem.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDbHelper {
  static final LocalDbHelper instance = LocalDbHelper._instance();

  static Database? _db;

  LocalDbHelper._instance();

  String smsTable = 'sms_table';
  String idColumn = 'id';
  String titleColumn = 'title';
  String bodyColumn = 'body';
  String categoryColumn = 'category';
  String isNewColumn = 'is_new';
  String isLikedColumn = 'is_liked';

  Future<Database> get db async => _db ??= await _initDb();

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "sms.db");
    final exist = await databaseExists(path);
    if (exist) {
      final smsDb = await openDatabase(path);
      return smsDb;
    } else {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      ByteData data = await rootBundle.load(join("assets/db", "sms.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
    }
    final smsDb = await openDatabase(path);
    return smsDb;
  }

  Future<List<Map<String, dynamic>>> getPoemMapList() async {
    Database? db = await this.db;
    final List<Map<String, Object?>> result = await db.query(smsTable);
    return result;
  }

  Future<List<Poem>> getPoemList() async {
    final List<Map<String, dynamic>> poemMapList = await getPoemMapList();
    final List<Poem> poemList = [];
    for (var poemMap in poemMapList) {
      print(Poem.fromMap(poemMap).title);
      poemList.add(Poem.fromMap(poemMap));
    }
    return poemList;
  }

  Future<int> insertPoem(Poem poem) async {
    Database db = await this.db;
    final int result = await db.insert(smsTable, poem.toMap());
    return result;
  }

  Future<int> updatePoem(Poem poem) async {
    Database db = await this.db;
    final int result = await db.update(smsTable, poem.toMap(),
        where: '$idColumn = ?', whereArgs: [poem.id]);
    return result;
  }

  Future<int> deletePoem(int id) async {
    Database db = await this.db;
    final int result =
        await db.delete(smsTable, where: '$idColumn = ?', whereArgs: [id]);
    return result;
  }
}
