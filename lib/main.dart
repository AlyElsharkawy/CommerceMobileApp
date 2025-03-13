import 'package:commerce_mobile_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        //textTheme: GoogleFonts.roboto
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      // theme: ThemeData(
      //   textTheme: GoogleFonts.RobotoTextTheme(Theme.of(context).textTheme),
      // ),
    );
  }
}
