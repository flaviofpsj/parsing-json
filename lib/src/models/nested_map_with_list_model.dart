class NestedMapWithListModel {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<Data> data;

  NestedMapWithListModel({this.page, this.perPage, this.total, this.totalPages, this.data});

  factory NestedMapWithListModel.fromJson(Map<String, dynamic> parsedJson) {

    var dataJson = parsedJson['data'] as List;
    List<Data> dataList = dataJson.map((i) => Data.fromJson(i)).toList();

    return NestedMapWithListModel(
      page: parsedJson['page'],
      perPage: parsedJson['per_page'],
      total: parsedJson['total'],
      totalPages: parsedJson['total_pages'],
      data: dataList,
    );
  }
}

class Data {
  final int id;
  final String firstName;
  final String lastName;
  final String avatar;

  Data({this.id, this.firstName, this.lastName, this.avatar});

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    return Data(
      id: parsedJson['id'],
      firstName: parsedJson['first_name'],
      lastName: parsedJson['last_name'],
      avatar: parsedJson['avatar'],
    );
  }
}
