import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/fake.dart';

class FetchHomeApi {
  Future<List<Fake>> fetchPost() async {
    var uri =
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1/comments');
    final List<Fake> result = [];
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        data.forEach((element) {
          result.add(Fake.fromJson(element));
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
