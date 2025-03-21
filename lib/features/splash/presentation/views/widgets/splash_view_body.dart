import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/home/presentation/views/home_view.dart';
import 'package:book_store/features/splash/presentation/views/widgets/sliding_text_animated.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 4),() {
      Get.to( () => const HomeView() , transition: Transition.rightToLeftWithFade,duration: kTransitionDuration);
    },);
  }

  void initSlidingAnimation() {
     animationController = AnimationController(vsync: this , duration: Duration(seconds: 1), );
    animation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero).animate(animationController);
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
        Image.asset(AssetsData.logo,width: 100,),
        SlidingTextAnimation(animation: animation),

      ],
    );
  }
}


