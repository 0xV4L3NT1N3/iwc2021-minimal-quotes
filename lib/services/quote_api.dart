import 'package:http/http.dart';
import 'dart:convert';

// this function fetches data from the quote API and passes it to the main page
// quote API used : https://github.com/lukePeavey/quotable

class QuoteAPI {
  Future<Map> getData () async {
    Response response = await get(Uri.parse('https://api.quotable.io/random?maxLength=160'));
    Map data = jsonDecode(response.body);

    return data;
  }
}