import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static const TextStyle bold24Black = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle regular16Grey = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle regular16Blue = TextStyle(
    color: Colors.blue,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle regular16White = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle bold32White = GoogleFonts.chewy(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
  );
}
