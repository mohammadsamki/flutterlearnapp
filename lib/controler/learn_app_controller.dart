import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_ease/model/learn_item.dart';

class LearnAppController {
  final String baseUrl = 'http://127.0.0.1:3000/api/learnApp/';
  Future<List<LearnItem>> fetchItem() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List jsonResponce = jsonDecode(response.body);
      return jsonResponce.map((item) => LearnItem.fromJson(item)).toList();
    }
    else{
      throw Exception('Failed to load LearnItem');
    }
  }
}
