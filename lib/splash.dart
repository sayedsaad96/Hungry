import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: AppColors.primary);
  }
}
