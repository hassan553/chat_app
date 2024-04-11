import 'package:chat_app/core/utils/app_colors.dart';
import 'package:chat_app/core/widget/custom_button.dart';
import 'package:chat_app/features/oboarding/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/text_theme.dart';
import '../../../../core/utils/app_strings.dart';
import '../../controller/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: Get.height * .02),
            GestureDetector(
              onTap: () => controller.nextPage(),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  width: Get.width * 0.15,
                  padding: EdgeInsets.all(Get.height * .01),
                  decoration: BoxDecoration(
                      color: AppColors.lightSecondaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    AppStrings.skip,
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.f50016,
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * .02),
            SizedBox(
              height: Get.height * .7,
              child: PageView.builder(
                  onPageChanged: (value) {
                    
                  },
                  controller: controller.scrollController,
                  itemBuilder: (context, index) =>
                      GetBuilder<OnboardingController>(builder: (controller) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                onboardingList[index].image,
                                width: Get.width,
                                height: Get.height * .4,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * .1,
                            ),
                            Text(
                              onboardingList[index].title,
                              textAlign: TextAlign.center,
                              style: CustomTextStyle.f50020,
                            )
                          ],
                        );
                      }),
                  itemCount: onboardingList.length),
            ),
            SizedBox(height: Get.height * .02),
            CustomButton(
              color: AppColors.primaryColor,
              function: () {
                controller.nextPage();
              },
              title: AppStrings.next,
              textStyle: CustomTextStyle.f50018,
            ),
            SizedBox(height: Get.height * .02),
          ],
        ),
      )),
    );
  }
}
