import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

/// new way ///

final tTextStyleRegular = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: AppColor.white, fontSize: 12));

final tTextStyle500 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: AppColor.white, fontSize: 14, fontWeight: FontWeight.w500));

final tTextStyle600 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: AppColor.white, fontSize: 16, fontWeight: FontWeight.w600));

final tTextStyle700 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: AppColor.white, fontSize: 18, fontWeight: FontWeight.w700));

final tTextStyle800 = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: AppColor.white, fontSize: 20, fontWeight: FontWeight.w800));

final tTextStyleBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: AppColor.white, fontSize: 24, fontWeight: FontWeight.bold));

final hintTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w400, color: Color(0xFF808080)));
