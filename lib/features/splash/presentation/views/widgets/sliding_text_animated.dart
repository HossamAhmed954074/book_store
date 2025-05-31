import 'package:flutter/material.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context,_) {
          return  SlideTransition(
            position: animation,
            child: const Text('Read Free Books',style: TextStyle(
              fontSize: 18,
            ),textAlign: TextAlign.center,),
          );
        }
    );
  }
}