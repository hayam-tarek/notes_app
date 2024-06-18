class NoteModel {
  final String title;
  final String content;
  final DateTime createdAt;
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
