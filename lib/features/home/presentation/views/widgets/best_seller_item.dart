import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_price_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 4,
              child: Container(
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
           
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
                  SizedBox(
                    width:  MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'Harry Potter and the Philosopher\'s Stone',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textStyle20,
                    ),
                  ),
                  Text(
                    'Author Name',
                    style: TextStyles.textStyle14.copyWith(
                      color: const Color(0xff707070),
                    ),
                  ),
                  BookPriceAndRatingItem(),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
