import 'package:book_store/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookTextDetails extends StatelessWidget {
  const BookTextDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Book Title',
          style: TextStyles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          'Author Name',
          style: TextStyles.textStyle16.copyWith(fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Text(
          'This is a brief description of the book. It provides an overview of the content and themes.',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.yellow,
              size: 14,
            ),
            const SizedBox(width: 6.3),
            const Text('4.5', style: TextStyles.textStyle16),
            const SizedBox(width: 5),
            Text(
              '(200)',
              style: TextStyles.textStyle14.copyWith(color: Color(0xff707070)),
            ),
          ],
        ),
      ],
    );
  }
}