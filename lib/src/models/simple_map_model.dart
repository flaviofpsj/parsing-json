class SimpleMapModel {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  SimpleMapModel({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory SimpleMapModel.fromJson(Map<String, dynamic> parsedJson) {
    return SimpleMapModel(
      albumId: parsedJson['albumId'],
      id: parsedJson['id'],
      title: parsedJson['title'],
      url: parsedJson['url'],
      thumbnailUrl: parsedJson['thumbnailUrl'],
    );
  }
}
