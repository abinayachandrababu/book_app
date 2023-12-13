import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_book_app/data_quotes_list.dart';
import 'package:flutter_book_app/display_quotes_text.dart';
import 'package:flutter_book_app/my_profile_screen.dart';
import 'package:flutter_book_app/pv_quotes_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('-------->initstate');

    Timer(Duration(seconds: 5), () =>
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) =>PVQuotesText()))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade200,
      body: SafeArea(
        child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset('images/James Clear.jpg',
                    height: 140,
                    width: 110,
                    fit: BoxFit.cover,),
                ),

                Padding(padding: EdgeInsets.only(top: 5,bottom: 15),
                  child: Text(
                    '-James Clear',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold
                    ),),)
              ],
            ),
          ),

        ),
      );
  }
}
