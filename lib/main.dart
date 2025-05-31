import 'package:book_store/core/router/app_router.dart';
import 'package:book_store/core/theme/app_theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkAppTheme,
      routerConfig: AppRouter.router,
    );
  }
}


