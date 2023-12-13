import 'package:flutter/material.dart';
import 'package:flutter_book_app/data_quotes_list.dart';
import 'package:flutter_book_app/pv_quotes_text.dart';


class DisplayQuotesText extends StatelessWidget {
  final QuotesList appData;

  const DisplayQuotesText({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
          letterSpacing: 2.5,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.cyan.shade500,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  appData.quote,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
