import 'package:flutter/material.dart';

class LoadingIndecatorCustom extends StatelessWidget {
  const LoadingIndecatorCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: CircularProgressIndicator(),
      ),
    );
  }
}