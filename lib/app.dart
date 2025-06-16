import 'package:ecommerce/features/on_boarding/views/on_boarding_view.dart';
import 'package:ecommerce/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "E-Commerce",
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      home: OnBoardingView(),
    );
  }
}
