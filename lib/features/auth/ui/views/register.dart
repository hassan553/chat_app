import 'package:chat_app/core/theme/text_theme.dart';
import 'package:chat_app/core/widget/custom_button.dart';
import 'package:chat_app/core/widget/custom_text_button.dart';
import 'package:chat_app/features/auth/ui/views/loigin_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Container(
        width: Get.width,
        padding: EdgeInsetsDirectional.only(start: Get.width * .04),
        alignment: AlignmentDirectional.centerStart,
        height: 200,
        decoration: const ShapeDecoration(
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.register,
              style: CustomTextStyle.f60030.copyWith(color: AppColors.white),
            ),
            Text(
              AppStrings.enterDetailsRegister,
              style: CustomTextStyle.f40016.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsetsDirectional.only(
            start: Get.width * .04, end: Get.width * .04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * .08),
            const CustomTextField(
              fillColor: Colors.transparent,
              labelText: AppStrings.email,
              hintText: AppStrings.enterYourEmail,
              style: CustomTextStyle.f50016,
            ),
            SizedBox(height: Get.height * .025),
            const CustomTextField(
              fillColor: Colors.transparent,
              labelText: AppStrings.password,
              hintText: AppStrings.enterYourPassword,
              password: true,
              style: CustomTextStyle.f50016,
            ),
            SizedBox(height: Get.height * .025),
            const CustomTextField(
              fillColor: Colors.transparent,
              labelText: AppStrings.confirmPassword,
              hintText: AppStrings.reEnterPassword,
              password: true,
              style: CustomTextStyle.f50016,
            ),
            SizedBox(height: Get.height * .1),
            CustomButton(
              function: () {},
              title: AppStrings.signIn,
            ),
            SizedBox(height: Get.height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppStrings.alreadyHaveAccount,
                  style: CustomTextStyle.f40012,
                ),
                CustomTextButton(
                  onTap: () => Get.to(const LoginView()),
                  text: AppStrings.signIn,
                  style: CustomTextStyle.f60012,
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      )
    ]));
  }
}
