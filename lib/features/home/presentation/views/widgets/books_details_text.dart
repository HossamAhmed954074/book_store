import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookTextDetails extends StatelessWidget {
  const BookTextDetails({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          bookModel.volumeInfo.title!,
          style: TextStyles.textStyle18.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        bookModel.volumeInfo.authors != null &&
                bookModel.volumeInfo.authors!.isNotEmpty
            ? Wrap(
              children: [
                for (int i = 0; i < bookModel.volumeInfo.authors!.length; i++)
                  Text(
                    '${bookModel.volumeInfo.authors![i].substring(0, 10)} ,',
                    style: TextStyles.textStyle16.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ],
            )
            : SizedBox(),

        const SizedBox(height: 10),
        Text(
          bookModel.volumeInfo.description ?? 'No Description',
          style: TextStyles.textStyle14,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
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
