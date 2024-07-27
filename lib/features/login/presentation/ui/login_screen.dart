import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_task/core/app_assets.dart';
import 'package:ui_task/core/ui-component/colors/app_colors.dart';
import 'package:ui_task/core/ui-component/sizes/app_sizes.dart';
import 'package:ui_task/core/ui-component/text-styles/app_text_styles.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const  SizedBox(height: 8),
            const Text(
              'Sign in to your account',
              style: TextStyle(color: Colors.grey),
            ),
            const  SizedBox(height: 32),
              TextField(
              decoration: InputDecoration(
                labelText: 'Username / Email',
                labelStyle: AppTextStyles.semiBoldType14,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary),
                )
              ),
            ),
            const SizedBox(height: 16),
             TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon:  const Icon(Icons.visibility_off),
                  labelStyle: AppTextStyles.semiBoldType14,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                  )
              ),
            ),
            const SizedBox(height: 8),
             Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password ?',
                style: AppTextStyles.semiBoldType14,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize:const Size(double.infinity, 50),
                backgroundColor: Colors.black,
                shape:const ContinuousRectangleBorder()
              ),
              child:  Text('Login',style: AppTextStyles.boldType16.copyWith(color: AppColors.background),),
            ),
            const SizedBox(height: 32),
             Text(
              'Or login with account',
              style: AppTextStyles.semiBoldType12
            ),
            const SizedBox(height: 16),
            const LoginWithMailComponent(label: 'Google', icon: AppAssets.google,),
            const SizedBox(height: 16),
            const LoginWithMailComponent(label: 'Facebook', icon: AppAssets.facebook,),
            const SizedBox(height: 16),
            const LoginWithMailComponent(label: 'Apple', icon: AppAssets.apple,),
            const SizedBox(height: 32),
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account? ',
                style: AppTextStyles.mediumType14,
                children: [
                  TextSpan(
                    text: 'Register Here',
                    style: AppTextStyles.boldType14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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