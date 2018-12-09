class Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photos({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photos.fromJson(Map<String, dynamic> parsedJson) {
    return Photos(
      albumId: parsedJson['albumId'],
      id: parsedJson['id'],
      title: parsedJson['title'],
      url: parsedJson['url'],
      thumbnailUrl: parsedJson['thumbnailUrl'],
    );
  }
}
