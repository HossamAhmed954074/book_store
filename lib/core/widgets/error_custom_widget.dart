import 'package:flutter/material.dart';

class ErrorCustomWidget extends StatelessWidget {
  const ErrorCustomWidget({super.key, required this.errorMessage});
final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errorMessage,style: const TextStyle(color: Colors.red),);
  }
}