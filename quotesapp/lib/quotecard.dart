import 'package:flutter/material.dart';
import 'package:quotesapp/quotes.dart';

class Quotecard extends StatelessWidget {
  late Quotes quote;
  late Function() delete;
  Quotecard({required this.quote, required this.delete});

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
            SizedBox(height: 8),
            IconButton(onPressed: delete, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
