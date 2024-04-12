import 'package:chat_app/core/theme/text_theme.dart';
import 'package:chat_app/core/widget/custom_button.dart';
import 'package:chat_app/core/widget/custom_text_button.dart';
import 'package:chat_app/features/auth/ui/views/forget_password.dart';
import 'package:chat_app/features/auth/ui/views/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/custom_text_field.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

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
              AppStrings.newPassword,
              style: CustomTextStyle.f60030.copyWith(color: AppColors.white),
            ),
            Text(
              AppStrings.enterDetailsNewPassword,
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
              labelText: AppStrings.password,
              hintText: AppStrings.enterYourPassword,
              password: true,
              style: CustomTextStyle.f50016,
            ),
            SizedBox(height: Get.height * .025),
            const CustomTextField(
              fillColor: Colors.transparent,
              labelText: AppStrings.confirmPassword,
              hintText: AppStrings.enterYourPassword,
              password: true,
              style: CustomTextStyle.f50016,
            ),
            SizedBox(height: Get.height * .15),
            CustomButton(
              function: () {},
              title: AppStrings.newPassword,
            ),
            SizedBox(height: Get.height * .02),
          ],
        ),
      )
    ]));
  }
}
