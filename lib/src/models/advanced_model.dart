class Users {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  Users({this.id, this.name, this.username, this.email, this.address, this.phone, this.website, this.company});

  factory Users.fromJson(Map<String, dynamic> parsedJson) {
    return Users(
      id: parsedJson['id'],
      name: parsedJson['name'],
      username: parsedJson['username'],
      email: parsedJson['email'],
      address: Address.fromJson(parsedJson['address']),
      phone: parsedJson['phone'],
      website: parsedJson['website'],
      company: Company.fromJson(parsedJson['company']),
    );
  }
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String, dynamic> parsedJson) {
    return Address(
      street: parsedJson['street'],
      suite: parsedJson['suite'],
      city: parsedJson['city'],
      zipcode: parsedJson['zipcode'],
      geo: Geo.fromJson(parsedJson['geo']),
    );
  }
}

class Geo {
  final String lat;
  final String lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map<String, dynamic> parsedJson) {
    return Geo(
      lat: parsedJson['lat'],
      lng: parsedJson['lng'],
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> parsedJson) {
    return Company(
      name: parsedJson['name'],
      catchPhrase: parsedJson['catchPhrase'],
      bs: parsedJson['bs'],
    );
  }
}
