import 'package:commerce_mobile_app/database_wrapper.dart';
import 'package:commerce_mobile_app/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //insertDummyData();
  final Logger lg = Logger();
  lg.i(await getAllProductsData());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

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
