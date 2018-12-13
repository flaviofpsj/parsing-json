class ListMapModel {
  final List<Photo> photos;

  ListMapModel({this.photos});

  factory ListMapModel.fromJson(List<dynamic> parsedJson) {

    List<Photo> photosList = new List<Photo>();
    photosList = parsedJson.map((i) => Photo.fromJson(i)).toList();

    return ListMapModel(
      photos: photosList,
    );
  }
}

class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> parsedJson) {
    return Photo(
      albumId: parsedJson['albumId'],
      id: parsedJson['id'],
      title: parsedJson['title'],
      url: parsedJson['url'],
      thumbnailUrl: parsedJson['thumbnailUrl'],
    );
  }
}
