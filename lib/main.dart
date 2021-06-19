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

  // variables holding quote and author data, set to loading... at first

  String quote = 'loading ...';
  String author = 'loading ...';

  // get quote API data, store the data above

  void getQuote () async {
    QuoteAPI newQuote = QuoteAPI();
    await newQuote.getData();
    setState(() {
      quote = newQuote.content;
      author = newQuote.author;
    });
  }

  @override
  void initState() {
    super.initState();
    getQuote();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.drive_file_rename_outline_rounded, size: 30, color: Colors.black54),
          centerTitle: true,
          title: Text('Minimal Quotes', style: TextStyle(color: Colors.black54)),
          backgroundColor: Colors.grey[50],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(quote,
                  style: TextStyle(fontSize: 30)),
              SizedBox(height: 50),
              Text(author,
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
              SizedBox(height: 120),
              Center(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      getQuote();
                    });
                  },
                  color: Colors.black87,
                  minWidth: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Next Quote', style: TextStyle(color: Colors.grey[50])),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward_rounded, color: Colors.grey[50]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
