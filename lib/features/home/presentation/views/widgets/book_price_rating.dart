import 'package:book_store/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookPriceAndRatingItem extends StatelessWidget {
  const BookPriceAndRatingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '19.99 \$',
          style: TextStyles.textStyle20.copyWith(
            
            fontWeight: FontWeight.bold,
          ),
        ),
                
        Row(
          children: [
            Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 14),
            SizedBox(width: 6.3),
            Text('4.5', style: TextStyles.textStyle16),
             SizedBox(width: 5),
            Text(
              '(200)',
              style: TextStyles.textStyle14.copyWith(
                color: Color(0xff707070),),
            ),
          ],
        ),
      ],
    );
  }
}