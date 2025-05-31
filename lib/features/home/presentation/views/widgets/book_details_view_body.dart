import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomDetailsHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.01,
                  horizontal: width * 0.18,
                ),
                child: const CustomBookImage(),
              ), // Placeholder image
              const SizedBox(height: 20),
              const BookTextDetails(),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomDetailsHeader extends StatelessWidget {
  const CustomDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        const SizedBox(width: 20), // Placeholder for the back button
      ],
    );
  }
}

class BookTextDetails extends StatelessWidget {
  const BookTextDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Book Title',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        const Text(
          'Author Name',
          style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
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
