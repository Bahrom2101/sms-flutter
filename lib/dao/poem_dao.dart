import 'package:floor/floor.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';
import 'package:sms/entity/poem.dart';

@dao
abstract class PoemDao {

  @Query('select * from Employee')
  Stream<List<Poem>> getAllPoem();

  @Query('select * from Poem where id=:id')
  Stream<Poem?> getPoemById(int id);

  @Query('select count(is_new) from Poem where is_new=1')
  Future<int?> getCountNew();

  @Query('select count(is_liked) from Poem where is_liked=1')
  Future<int?> getCountLike();

  @Query('delete from Poem')
  Future<void> deleteAllPoem();

  @insert
  Future<void> insertPoem(Poem poem);

  @update
  Future<void> updatePoem(Poem poem);

  @delete
  Future<void> deletePoem(Poem poem);

}