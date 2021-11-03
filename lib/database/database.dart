import 'package:floor/floor.dart';
import 'package:sms/dao/poem_dao.dart';
import 'package:sms/entity/poem.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version:1, entities:[Poem])
abstract class AppDatabase extends FloorDatabase {
  PoemDao get poemDao;
}