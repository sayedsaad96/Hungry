import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';

import '../../../shared/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primary,

        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Gap(180),
                SvgPicture.asset('assets/logo/logo.svg'),
                Gap(10),
                CustomText(
                  text: "Welcome Back! Discover The Fast Food",
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  size: 14,
                ),
                Gap(70),
                CustomTextfield(
                  controller: emailController,
                  hint: 'Email Address',
                  isPassword: false,
                ),
                Gap(20),
                CustomTextfield(
                  controller: passwordController,
                  hint: 'Password',
                  isPassword: true,
                ),
                Gap(30),
                Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'Login',
                      color: AppColors.primary,
                      fontWeight: FontWeight.w500,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
