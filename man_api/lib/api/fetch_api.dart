import 'dart:convert';
import '../model/man_model.dart';

import 'package:http/http.dart' as http;

class FetchHomeApi {
  Future<List<Man>> fetchPost() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/albums');
    final List<Man> result = [];
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        data.forEach((element) {
          result.add(Man.fromJson(element));
        });
        return result;
      }
      return result;
    } catch (e) {
      print(e);
      return result;
    }
  }
}
