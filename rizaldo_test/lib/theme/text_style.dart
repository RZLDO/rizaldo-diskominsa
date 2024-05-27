import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rizaldo_test/theme/app_color.dart';

class ReusableTextStyle {
  static TextStyle titleBigTextBold = GoogleFonts.poppins(
      color: AppColor.blackColor, fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle titleMediumTextBold = GoogleFonts.poppins(
      color: AppColor.blackColor, fontSize: 16, fontWeight: FontWeight.bold);
  static TextStyle titleSmallTextBold = GoogleFonts.poppins(
      color: AppColor.blackColor, fontSize: 12, fontWeight: FontWeight.bold);
  static TextStyle titleSmallTextMedium = GoogleFonts.poppins(
      color: AppColor.blackColor, fontSize: 12, fontWeight: FontWeight.w500);
  static TextStyle titleSmallTextSemiBold = GoogleFonts.poppins(
      color: AppColor.blackColor, fontSize: 12, fontWeight: FontWeight.w600);
}
