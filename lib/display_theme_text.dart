import 'package:flutter/material.dart';
import 'package:flutter_book_app/data_theme_list.dart';
import 'package:flutter_book_app/pv_theme_text.dart';


class DisplayThemeText extends StatelessWidget {

  final ThemeList appData;

  const DisplayThemeText({Key? key, required this.appData}) : super(key: key);

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
              child: Text(
                appData.theme,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
