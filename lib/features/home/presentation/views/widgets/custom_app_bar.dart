import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.onPressdSearch});
  final Function() onPressdSearch;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, top: 0, left: 12, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          Image.asset(AssetsData.logo, width: 100),
          IconButton(
            onPressed: onPressdSearch,
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ],
      ),
    );
  }
}
