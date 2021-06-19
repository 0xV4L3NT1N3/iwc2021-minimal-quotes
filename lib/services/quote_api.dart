import 'package:http/http.dart';
import 'dart:convert';

// this function fetches data from the quote API and passes it to the main page
// quote API used : https://github.com/lukePeavey/quotable

class QuoteAPI {
  String content = '';
  String author = '';

  Future<void> getData () async {
    Response response = await get(Uri.parse('https://api.quotable.io/random'));
    Map data = jsonDecode(response.body);

    content = data['content'];
    author = data['author'];
  }

}