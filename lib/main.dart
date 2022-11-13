import 'package:flutter/material.dart';
import 'package:flutter_widget_basic_fic/pages/dashboard.dart';
import 'package:flutter_widget_basic_fic/pages/detailProduct.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey[200],
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const Dashboard(),
    );
  }
}
