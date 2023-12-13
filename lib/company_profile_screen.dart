import 'package:flutter/material.dart';
import 'package:flutter_book_app/drawer_navigation.dart';

class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade500,
        title: Text('Company Profile'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child: Image.asset('images/TidyLife_logo.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Tidy Life India Pvt Ltd',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.cyan,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Card(
                color: Colors.cyan.shade500,
                child: ListTile(
                  leading: Icon(Icons.phone,color: Colors.black,),
                  title: Text(
                    '+9186103 38291',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Roboto",
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.cyan.shade500,
                child: ListTile(
                  leading: Icon(Icons.web_asset_outlined,color: Colors.black,),
                  title: Text(
                    'http://www.tidylifeindia.com',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: Colors.cyan.shade500,
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.black,
                  ),
                  title: Text(
                      'No.A3, Mahalashimi Flats, Sivagani Street, \nNew Perungalathur, Chennai-600062',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'roboto',
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
