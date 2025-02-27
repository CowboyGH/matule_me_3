import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData();

abstract class AppColors {
  static const Color text = Color(0xFF2B2B2B);

  static const Color lightGrey = Color(0xFFF7F7F9);

  static const Color hint = Color(0xFF6A6A6A);
  static const Color hinter = Color(0xFFD9D9D9);

  static const Color dark = Color(0xFF707B81);

  static const Color white = Color(0xFFFFFFFF);
  static const Color blue = Color(0xFF48B2E7);
  static const Color red = Color(0xFFF87265);
}

abstract class AppShrifts {
  static TextStyle regular12R = GoogleFonts.raleway(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0);

  static TextStyle regular14R = GoogleFonts.raleway(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0);

  static TextStyle medium14R = GoogleFonts.raleway(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0);

  static TextStyle medium16R = GoogleFonts.raleway(
      fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0);

  static TextStyle semibold14R = GoogleFonts.raleway(
      fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0);

  static TextStyle semibold16R = GoogleFonts.raleway(
      fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0);

  static TextStyle semibold21R = GoogleFonts.raleway(
      fontSize: 21, fontWeight: FontWeight.w600, letterSpacing: 0);

  static TextStyle semibold26R = GoogleFonts.raleway(
      fontSize: 26, fontWeight: FontWeight.w600, letterSpacing: 0);

  static TextStyle semibold32R = GoogleFonts.raleway(
      fontSize: 32, fontWeight: FontWeight.w600, letterSpacing: 0);

  static TextStyle regular12P = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0);

  static TextStyle regular14P = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0);

  static TextStyle regular16P = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0);

  static TextStyle medium12P = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0);

  static TextStyle medium14P = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0);

  static TextStyle medium16P = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 0);

  static TextStyle medium24P = GoogleFonts.poppins(
      fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 0);

  static TextStyle semibold18P = GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 0);
}
