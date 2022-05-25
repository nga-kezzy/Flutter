import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import '../models/data_play.dart';
import 'dart:developer';

class FetchPlayApi {
  final random = new Random();
  List<String> randomReuslt = [];
  Future<List<DataPlay>> fetchPost(String cid) async {
    var uri = Uri.http(
      'api.myfeel.me',
      'GameShuffer/list',
      {'lang': 'vi', 'page': '1', 'cid': cid},
    );
    print('Đây là cid: ' + cid);
    final List<DataPlay> result = [];
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List dataCate = data['dataTalk'];
        dataCate.forEach((element) {
          result.add(DataPlay.fromJson(element));
        });
        for (var i = 0; i < result.length; i++) {
          print(result[i].name);
          int a = random.nextInt(result[i].name!.length);
          print(result[i].name!.split(' ')[a]);
        }
        return result;
      }

      return result;
    } catch (e) {
      print(e);
      return result;
    }
  }
}
