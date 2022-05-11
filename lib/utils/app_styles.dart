import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roll_6ix/utils/extensions.dart';

import 'app_colors.dart';

class AppStyles {
  TextStyle regularWhite9 = GoogleFonts.dmSans(
    textStyle: TextStyle(
        fontSize: 9.sp,
        color: AppColors.white,
        fontWeight: FontWeight.w400
    ),
  );
}