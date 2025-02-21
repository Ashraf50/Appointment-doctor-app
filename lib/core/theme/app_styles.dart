import 'package:doc_doc/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle style30blueBold = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle style20blackBold = TextStyle(
    color: AppColors.blackColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle style16white = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle style14grey = TextStyle(
    color: AppColors.textGreyColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}
