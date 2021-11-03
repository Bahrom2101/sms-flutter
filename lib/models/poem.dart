import 'package:sms/models/category.dart';

class Poem {
  int? id;
  String? title;
  String? body;
  String? category;
  int? isNew;
  int? isLiked;

  Poem.withId(
      {this.id,
      this.title,
      this.body,
      this.category,
      this.isNew,
      this.isLiked});

  Poem({this.title, this.body, this.category, this.isNew, this.isLiked});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['body'] = body;
    map['category'] = category;
    map['is_new'] = isNew;
    map['is_liked'] = isLiked;
    return map;
  }

  factory Poem.fromMap(Map<String, dynamic> map) {
    return Poem.withId(
        id: map['id'],
        title: map['title'],
        body: map['body'],
        category: map['category'],
        isNew: map['is_new'],
        isLiked: map['is_liked']);
  }
}
