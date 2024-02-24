import 'package:e_commerce_app/features/authentication/controllers/onBoarding_controller.dart';
import 'package:e_commerce_app/utils/constants/size.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: Tsize.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnBoardingController.instance.skipPage();
            },
            child: Text("Skip")));
  }
}
