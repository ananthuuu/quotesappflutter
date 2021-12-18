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
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => Quotecard(quote: quote)).toList(),
        ),
      ),
    );
  }
}

class Quotecard extends StatelessWidget {
  late Quotes quote;
  Quotecard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
