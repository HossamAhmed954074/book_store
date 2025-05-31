import 'package:book_store/core/theme/app_theme.dart';
import 'package:book_store/features/splash/presentation/views/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';




void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkAppTheme,
      home: SplashView(),
    );
  }
}
