import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailsScreenBody();
  }
}

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDetailsHeader(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.18,
                            ),
                            child: const CustomBookImage(),
                          ), // Placeholder image
                          const SizedBox(height: 10),
                          const BookTextDetails(),
                          BookDetailsPriceAndPreview(),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Text(
                                    'You Can Also Read',
                                    style: TextStyles.textStyle14.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              flex: 5,
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.horizontal,
                                itemCount: 10, // Example item count
                                itemBuilder: (context, index) {
                                  return const CustomBookImage(); // Placeholder for book image
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
        const SizedBox(width: 20),

        // Placeholder for the back button
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

class BookDetailsPriceAndPreview extends StatelessWidget {
  const BookDetailsPriceAndPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 50,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '19.99 \$',
                      style: TextStyles.textStyle18.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEF8262),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Free Preview',
                      style: TextStyles.textStyle16.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
