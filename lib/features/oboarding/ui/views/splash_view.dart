import 'package:chat_app/features/oboarding/ui/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void splashNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const OnboardingView());
    });
  }

  @override
  void initState() {
    super.initState();
    splashNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.splashBackPng),
            )),
        child: Center(
          child: AnimatedAlign(
              alignment: Alignment.center,
              duration: const Duration(milliseconds: 500),
              child: Image.asset(AppImages.logoPng)),
        ),
      ),
    );
  }
}
