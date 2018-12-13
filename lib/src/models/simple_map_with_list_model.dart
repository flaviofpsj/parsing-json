class SimpleMapWithListModel {
  final String name;
  final String email;
  final List<String> phones;

  SimpleMapWithListModel({this.name, this.email, this.phones});

  factory SimpleMapWithListModel.fromJson(Map<String, dynamic> parsedJson) {

    var phonesFromJson  = parsedJson['phone'];
    List<String> phonesList = phonesFromJson.cast<String>();

    return SimpleMapWithListModel(
      name: parsedJson['name'],
      email: parsedJson['email'],
      phones: phonesList,
    );
  }
}
