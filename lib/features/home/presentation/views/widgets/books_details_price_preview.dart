import 'package:book_store/core/utils/functions/url_lanching.dart';
import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsPriceAndPreview extends StatelessWidget {
  const BookDetailsPriceAndPreview({super.key, required this.bookModel});
 final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 40,
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
                      bookModel.saleInfo?.listPrice?.amount == null
                          ? 'Free'
                          :
                      '${bookModel.saleInfo!.listPrice!.amount} \$',
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
                onTap: () {
                 urlLancherBookPrivew(context, bookModel.volumeInfo.previewLink!);
                },
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
