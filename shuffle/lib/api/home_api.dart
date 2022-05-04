import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shuffle/models/data_talk.dart';

class FetchHomeApi {
  Future<List<DataTalk>> fetchPost() async {
    var uri = Uri.http(
      'api.myfeel.me',
      '/GameShuffer/index',
      {'lang': 'vi', 'page': '1'},
    );
    final List<DataTalk> result = [];
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List dataCate = data['categoryss'];
        dataCate.forEach((element) {
          result.add(DataTalk.fromJson(element));
        });
        print(result);
        return result;
      }
      return result;
    } catch (e) {
      print(e);
      return result;
    }
  }
}
