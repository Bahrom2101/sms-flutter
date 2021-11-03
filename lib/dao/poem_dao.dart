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

  @Query('select count(isNew) from Poem where isNew=1')
  Future<int?> getCountNew();

  @Query('select count(isLiked) from Poem where isLiked=1')
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