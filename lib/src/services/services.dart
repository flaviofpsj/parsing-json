import './../models/simple_map_model.dart';
import './../models/list_map_model.dart';
import './../models/simple_map_with_list_model.dart';
import './../models/nested_map_model.dart';
import './../models/nested_map_with_list_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Services {
  static String simpleMapUrl = 'https://jsonplaceholder.typicode.com/photos/1';
  static String listMapUrl = 'https://jsonplaceholder.typicode.com/albums/1/photos';
  static String simpleMapWithListUrl = 'https://app.fakejson.com/q/vQ3BDw4l?token=aEi4TxPrW84aoL1TPRsqxw';
  static String nestedMapUrl = 'https://jsonplaceholder.typicode.com/users';
  static String nestedMapWithListUrl = 'https://reqres.in/api/users';

  static Future<SimpleMapModel> fetchSimpleMap() async {
    final response = await http.get(simpleMapUrl);

    if(response.statusCode == 200) {
      var decoded = json.decode(response.body);
      return SimpleMapModel.fromJson(decoded);
    } else {
      throw Exception('Failed to load');
    }
  }

  static Future<ListMapModel> fetchListMap() async {
    final response = await http.get(listMapUrl);

    if(response.statusCode == 200) {
      var decoded = json.decode(response.body);
      return ListMapModel.fromJson(decoded);
    } else {
      throw Exception('Failed to load');
    }
  }

  static Future<SimpleMapWithListModel> fetchSimpleMapWithList() async {
    final response = await http.get(simpleMapWithListUrl);

    if(response.statusCode == 200) {
      var decoded = json.decode(response.body);
      return SimpleMapWithListModel.fromJson(decoded);
    } else {
      throw Exception('Failed to load');
    }
  }

  static Future<NestedMapModel> fetchNestedMap() async {
    final response = await http.get(nestedMapUrl);

    if(response.statusCode == 200) {
      var decoded = json.decode(response.body);
      return NestedMapModel.fromJson(decoded);
    } else {
      throw Exception('Failed to load');
    }
  }

  static Future<NestedMapWithListModel> fetchNestedMapWithList() async {
    final response = await http.get(nestedMapWithListUrl);

    if(response.statusCode == 200) {
      var decoded = json.decode(response.body);
      return NestedMapWithListModel.fromJson(decoded);
    } else {
      throw Exception('Failed to load');
    }
  }
}
