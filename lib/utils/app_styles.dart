import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roll_6ix/utils/extensions.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle regularWhite20 = GoogleFonts.dmSans(
    textStyle: TextStyle(
        fontSize: 20.sp,
        color: AppColors.white,
        fontWeight: FontWeight.w700
    ),
  );

  static TextStyle regularBlack20 = GoogleFonts.dmSans(
    textStyle: TextStyle(
        fontSize: 20.sp,
        color: AppColors.darkerTextColor,
        fontWeight: FontWeight.w700
    ),
  );
}