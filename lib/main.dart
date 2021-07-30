import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import '../screens/about.dart';
import '../screens/contactUs.dart';
import '../screens/HomePage.dart';
import '../screens/services.dart';

void main() {
  runApp(Avian());
}

class Avian extends StatefulWidget {
  const Avian({Key? key}) : super(key: key);

  @override
  _AvianState createState() => _AvianState();
}

class _AvianState extends State<Avian> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonColor: Colors.blue[700],
        textTheme: TextTheme(
          headline1: GoogleFonts.aBeeZee(
            textStyle: TextStyle(
                fontSize: 30, color: Colors.amber, fontWeight: FontWeight.w600),
          ),
          headline2: GoogleFonts.aBeeZee(
            textStyle: TextStyle(
                fontSize: 20, color: Colors.amber, fontWeight: FontWeight.w600),
          ),
          headline3: GoogleFonts.aBeeZee(
            textStyle: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w600),
          ),
          bodyText1: GoogleFonts.aBeeZee(
            textStyle: TextStyle(
                fontSize: 15, color: Colors.amber, fontWeight: FontWeight.w600),
          ),
          button: GoogleFonts.aBeeZee(
            textStyle: TextStyle(color: Colors.amber),
          ),
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          backgroundColor: Colors.black,
          centerTitle: true,
          titleTextStyle: GoogleFonts.aBeeZee(
            textStyle: TextStyle(color: Colors.white),
          ),
          elevation: 0.0,
        ),
      ),
      home: HomePage(),
      routes: {
        AboutUs.routeName: (ctx) => AboutUs(),
        ContactUs.routeName: (ctx) => ContactUs(),
        HomePage.routeName: (ctx) => HomePage(),
        Services.routeName: (ctx) => Services(),
      },
    );
  }
}
