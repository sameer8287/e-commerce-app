import 'package:e_commerce_app/features/authentication/screens/on_boarding/onboarding.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        darkTheme: TAppTheme.darkTheme,
        home: OnBoardingScreen());
  }
}
