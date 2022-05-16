import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/data_play.dart';

class FetchPlayApi {
  Future<List<DataPlay>> fetchPost() async {
    var uri = Uri.http(
      'api.myfeel.me',
      '/GameShuffer/list',
      {'lang': 'vi', 'page': '1', 'cid': '124'},
    );
    final List<DataPlay> result = [];
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List dataCate = data['categoryss'];
        dataCate.forEach((element) {
          result.add(DataPlay.fromJson(element));
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
