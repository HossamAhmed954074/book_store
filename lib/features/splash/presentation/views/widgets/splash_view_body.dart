import 'package:book_store/core/router/app_router.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/splash/presentation/views/widgets/sliding_text_animated.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeScreen();
  }

  void navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        GoRouter.of(context).go(AppRouter.homeRoute);
      }
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo, width: 100),
        SlidingTextAnimation(animation: animation),
      ],
    );
  }
}
