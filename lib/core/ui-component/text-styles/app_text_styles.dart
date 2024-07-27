
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/core/ui-component/colors/app_colors.dart';
import 'package:ui_task/core/ui-component/sizes/app_sizes.dart';

class AppTextStyles {
  static  TextStyle boldType16 = TextStyle(
    color:AppColors.natural900,
      fontSize: AppSizes.size_16.sp,
    fontWeight: FontWeight.w700
  );
  static  TextStyle boldType14 = TextStyle(
    color:AppColors.natural900,
      fontSize: AppSizes.size_14.sp,
    fontWeight: FontWeight.w700
  );
  static  TextStyle semiBoldType14 = TextStyle(
    color:AppColors.natural900,
      fontSize: AppSizes.size_14.sp,
    fontWeight: FontWeight.w600
  );
  static  TextStyle semiBoldType12 = TextStyle(
    color:AppColors.natural500,
      fontSize: AppSizes.size_12.sp,
    fontWeight: FontWeight.w600
  );
  static  TextStyle mediumType14 = TextStyle(
    color:AppColors.natural500,
      fontSize: AppSizes.size_14.sp,
    fontWeight: FontWeight.w500
  );
}