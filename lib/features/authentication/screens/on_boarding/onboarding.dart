import 'package:e_commerce_app/features/authentication/controllers/onBoarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/on_boarding/widget/onboarding_dot_indicator.dart';
import 'package:e_commerce_app/features/authentication/screens/on_boarding/widget/onboarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens/on_boarding/widget/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/on_boarding/widget/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                imageUrl: TImages.onBoardingImage1,
                subTitle: TTexts.onBoardingSubTitle1,
                title: TTexts.onBoardingTitle1,
              ),
              OnBoardingPage(
                imageUrl: TImages.onBoardingImage2,
                subTitle: TTexts.onBoardingSubTitle2,
                title: TTexts.onBoardingTitle2,
              ),
              OnBoardingPage(
                imageUrl: TImages.onBoardingImage3,
                subTitle: TTexts.onBoardingSubTitle3,
                title: TTexts.onBoardingTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotIndicator(),
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
