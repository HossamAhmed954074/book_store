import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookPriceAndRatingItem extends StatelessWidget {
  const BookPriceAndRatingItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bookModel.saleInfo!.saleability!.contains('NOT_FOR_SALE')
              ? '0.0 \$'
              : bookModel.saleInfo?.listPrice == null
                  ? 'Free'
                  : '${bookModel.saleInfo!.listPrice!.amount} \$',

          style: TextStyles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),

        Row(
          children: [
            Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 14),
            SizedBox(width: 6.3),
            Text('best seller',
                 style: TextStyles.textStyle16),
            SizedBox(width: 5),
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
