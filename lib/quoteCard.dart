import 'package:flutter/material.dart';
import 'package:flutter_application_2/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  // ignore: use_key_in_widget_constructors
  const QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )),
            const SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                )),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: () {},
              label: Text('delete quote'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
