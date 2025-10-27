import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_auth_button.dart';
import 'package:hungry/shared/custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(180),
                SvgPicture.asset('assets/logo/logo.svg'),
                Gap(70),
                CustomTextfield(
                  controller: nameController,
                  hint: 'Name',
                  isPassword: false,
                ),
                Gap(15),
                CustomTextfield(
                  hint: 'Email',
                  isPassword: false,
                  controller: emailController,
                ),
                Gap(15),
                CustomTextfield(
                  hint: "Password",
                  isPassword: true,
                  controller: passwordController,
                ),
                Gap(15),
                CustomTextfield(
                  hint: "Confirm Password",
                  isPassword: true,
                  controller: confirmPasswordController,
                ),
                Gap(30),
                CustomAuthButton(
                  text: 'Sign Up',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      debugPrint("Success Register");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
