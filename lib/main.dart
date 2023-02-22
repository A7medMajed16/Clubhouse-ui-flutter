
import 'package:flutter/material.dart';
import 'package:clubhouse_ui/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

void main()=>runApp(MaterialApp(
  title: 'Clubhouse UI',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: kBackgroundColor),
    scaffoldBackgroundColor: kBackgroundColor,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
    iconTheme: const IconThemeData(color: Colors.black),
    fontFamily: GoogleFonts.nunito().fontFamily,
    textTheme: GoogleFonts.nunitoTextTheme(),
  ),
  home: const Home(),
));