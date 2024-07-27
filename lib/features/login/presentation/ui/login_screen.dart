import 'package:flutter/material.dart';
import 'package:ui_task/core/app_assets.dart';
import 'package:ui_task/core/ui-component/colors/app_colors.dart';
import 'package:ui_task/core/ui-component/text-styles/app_text_styles.dart';
import 'package:ui_task/features/login/presentation/ui/widgets/login_with_component.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             Text(
              'Login',
              style: AppTextStyles.boldType24,
            ),
            const  SizedBox(height: 8),
             Text(
              'Sign in to your account',
              style: AppTextStyles.mediumType14,
            ),
            const  SizedBox(height: 32),
              TextField(
                cursorColor: AppColors.primary, // Change the cursor color here
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
               cursorColor: AppColors.primary, // Change the cursor color here
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
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                  'Or login with account',
                  style: AppTextStyles.semiBoldType12
                             ),
               ],
             ),
            const SizedBox(height: 16),
            const LoginWithMailComponent(label: 'Google', icon: AppAssets.google,),
            const SizedBox(height: 16),
            const LoginWithMailComponent(label: 'Facebook', icon: AppAssets.facebook,),
            const SizedBox(height: 16),
            const LoginWithMailComponent(label: 'Apple', icon: AppAssets.apple,),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          ],
        ),
      ),
    );
  }
}

