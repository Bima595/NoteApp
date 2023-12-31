class Note {
  final String id;
  final String title;
  final String content;
  final DateTime modifiedTime;
  final String docsId;

  Note(
      {required this.id,
      required this.title,
      required this.content,
      required this.modifiedTime,
      required this.docsId});

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
        id: json['id'] as String,
        title: json['title'] as String,
        content: json['content'] as String,
        modifiedTime: DateTime.parse(json['modifiedTime'] as String),
        docsId: json['docsId'] as String? ?? "");
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'modifiedTime': modifiedTime.toIso8601String(),
      'docsId': docsId,
    };
  }
}
