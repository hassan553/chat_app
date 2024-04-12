import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/text_theme.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                  AppStrings.forgotPassword,
                  style:
                      CustomTextStyle.f60030.copyWith(color: AppColors.white),
                ),
                Text(
                  AppStrings.enterDetailsForgetPassword,
                  style:
                      CustomTextStyle.f40016.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(
                  start: Get.width * .04, end: Get.width * .04),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: Get.height * .2),
                    const CustomTextField(
                      fillColor: Colors.transparent,
                      labelText: AppStrings.email,
                      hintText: AppStrings.enterYourEmail,
                      style: CustomTextStyle.f50016,
                    ),
                    SizedBox(height: Get.height * .05),
                    CustomButton(
                      function: () {},
                      title: AppStrings.send,
                    ),
                  ]))
        ],
      ),
    );
  }
}
