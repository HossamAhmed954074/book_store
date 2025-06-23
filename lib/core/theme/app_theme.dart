import 'package:book_store/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final darkAppTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kPrimaryColor,
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
  );
}
