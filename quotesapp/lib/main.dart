import 'package:flutter/material.dart';
import 'package:quotesapp/quotes.dart';

void main() {
  runApp(MaterialApp(home: Quotelist()));
}

class Quotelist extends StatefulWidget {
  Quotelist({Key? key}) : super(key: key);

  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quotes> quotes = [
    Quotes(author: "ananth", text: "all glitters are not gold"),
    Quotes(author: "anan", text: "not trying means failed"),
    Quotes(author: "ananh", text: "failure is stepping stone to success"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((quote) => Text('${quote.text}  :  ${quote.author}'))
            .toList(),
      ),
    );
  }
}
