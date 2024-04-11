// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

class OnboardingModel {
  final String image;
  final String title;
  OnboardingModel({
    required this.image,
    required this.title,
  });
}

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    image: AppImages.onboardingPng,
    title: AppStrings.onboarding1,
  ),
  OnboardingModel(
    image: AppImages.onboardingPng,
    title: AppStrings.onboarding2,
  ),
  OnboardingModel(
    image: AppImages.onboardingPng,
    title: AppStrings.onboarding3,
  ),
];
