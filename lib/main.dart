import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:registration/screens/app_bar_screen.dart';
// import 'package:registration/screens/bar.dart';
import 'package:registration/screens/bv2_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.aBeeZee().fontFamily),
      debugShowCheckedModeBanner: false,
      home: BV2Registration(),
    );
  }
}
