import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth/ui/views/loigin_view.dart';

class OnboardingController extends GetxController {
  PageController scrollController = PageController();
  int counter = 0;
  void changeCounter(int value) {
    counter = value;
    update();
  }

  void nextPage() {
    if (counter == 2) {
      Get.to(const LoginView());
    } else {
      counter++;
      scrollController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
    update();
  }
}
