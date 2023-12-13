import 'package:flutter/material.dart';
import 'package:flutter_book_app/company_profile_screen.dart';
import 'package:flutter_book_app/my_profile_screen.dart';
import 'package:flutter_book_app/pv_quotes_text.dart';
import 'package:flutter_book_app/pv_theme_text.dart';
import 'package:flutter_book_app/pv_word_text.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Atomic Habits'),
              accountEmail: Text('Version 1.0'),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('images/James Clear.jpg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage('images/book image.jpg'))),
            ),
            ListTile(
              title: const Text('Quotes'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PVQuotesText()));
              },
            ),
            ListTile(
              title: const Text('Themes'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PVThemeText()));
              },
            ),
            ListTile(
              title: const Text('Words'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PVWordText()));
              },
            ),
            ListTile(
              title: const Text('Personal Profile'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyProfileScreen()));
              },
            ),
            ListTile(
              title: const Text('Company Profile'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CompanyProfileScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
