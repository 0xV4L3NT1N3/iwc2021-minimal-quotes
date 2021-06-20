import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'services/quote_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // // variables holding quote and author data, set to loading... at first
  //
  // String quote = 'loading ...';
  // String author = 'loading ...';
  //
  // // get quote API data, store the data above
  //
  // void getQuote () async {
  //   QuoteAPI newQuote = QuoteAPI();
  //   Map data = await newQuote.getData();
  //   setState(() {
  //     quote = data["content"];
  //     author = data["author"];
  //   });
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   getQuote();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // add your widgets here

      ),
    );
  }
}
