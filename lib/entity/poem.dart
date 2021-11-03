import 'package:floor/floor.dart';

@entity
class Poem {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  String? title, body, category;
  int? isNew, isLiked;

  Poem(
      {this.id,
      this.title,
      this.body,
      this.category,
      this.isNew,
      this.isLiked});
}
