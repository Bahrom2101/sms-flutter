import 'dart:io' as io;
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sms/models/poem.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();

  static Database? _db;

  DatabaseHelper._instance();

  String smsTable = 'sms_table';
  String idColumn = 'id';
  String titleColumn = 'title';
  String bodyColumn = 'body';
  String categoryColumn = 'category';
  String isNewColumn = 'is_new';
  String isLikedColumn = 'is_liked';

  Future<Database> get db async => _db ??= await _initDb();

  Future<Database> _initDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + 'poem_db.db';
    final smsDb = await openDatabase(path, version: 1, onCreate: _createDb);
    return smsDb;
  }

  void _createDb(Database db, int version) async {
    await db.execute('create $smsTable('
        '$idColumn integer primary key autoincrement, '
        '$titleColumn text, '
        '$bodyColumn text, '
        '$categoryColumn text, '
        '$isNewColumn integer, '
        '$isLikedColumn integer)');
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
