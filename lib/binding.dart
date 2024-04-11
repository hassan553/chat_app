import 'package:chat_app/features/oboarding/controller/onboarding_controller.dart';
import 'package:get/get.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(
        () => OnboardingController(),
    );
  }
}


