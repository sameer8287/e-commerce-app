import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/common/widget/widgets_login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widget/widgets_login_signup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/login_screen/widget/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login_screen/widget/login_header.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/size.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TspacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(isDark: isDark),
              const LoginForm(),
              FormDivider(isDark: isDark, txt: TTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Footer
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
