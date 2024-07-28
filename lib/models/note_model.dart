import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  final String createdAt;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.content,
    required this.createdAt,
    required this.color,
  });
  factory NoteModel.fromJSON(json) {
    return NoteModel(
      title: json['title'],
      content: json['content'],
      createdAt: json['createdAt'],
      color: json['color'],
    );
  }
}
