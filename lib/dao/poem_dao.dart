import 'package:floor/floor.dart';
import 'package:sms/entity/poem.dart';

@dao
abstract class PoemDao {

  @Query('select * from Poem')
  Stream<List<Poem>> getAllPoem();

  @Query('select * from Poem where isNew=1')
  Future<List<Poem>> getAllPoemNew();

  @Query('select * from Poem where isLiked=1')
  Future<List<Poem>> getAllPoemLiked();

  @Query('select * from Poem where id=:id')
  Stream<Poem?> getPoemById(int id);

  @Query('delete from Poem')
  Future<void> deleteAllPoem();

  @insert
  Future<void> insertPoem(Poem poem);

  @update
  Future<void> updatePoem(Poem poem);

  @delete
  Future<void> deletePoem(Poem poem);

}