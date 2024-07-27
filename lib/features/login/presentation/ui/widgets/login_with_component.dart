import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task/core/ui-component/colors/app_colors.dart';
import 'package:ui_task/core/ui-component/sizes/app_sizes.dart';
import 'package:ui_task/core/ui-component/text-styles/app_text_styles.dart';

class LoginWithMailComponent extends StatelessWidget {
  final String label , icon ;

  const LoginWithMailComponent({super.key, required this.label,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:AppSizes.size_8.h ,horizontal: AppSizes.size_32.w),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.natural200),
          borderRadius: BorderRadius.circular(AppSizes.size_2)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(icon,width: AppSizes.size_16.r,height: AppSizes.size_24.r,),
          SizedBox(width: AppSizes.size_24.w,),
          Text("Continue with $label",style: AppTextStyles.boldType16,),
        ],
      ),
    );
  }
}