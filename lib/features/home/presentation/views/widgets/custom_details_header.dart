import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDetailsHeader extends StatelessWidget {
  const CustomDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        IconButton(
          icon: const Icon(FontAwesomeIcons.xmark),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        const Expanded(
          child: Text(
            'Book Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        const Icon(Icons.shopping_cart_outlined),
        const SizedBox(width: 20),

        // Placeholder for the back button
      ],
    );
  }
}