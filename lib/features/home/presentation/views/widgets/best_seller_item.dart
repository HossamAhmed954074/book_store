import 'package:book_store/core/router/app_router.dart';
import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_price_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: GestureDetector(
        onTap:
            () => GoRouter.of(
              context,
            ).push(AppRouter.detailsRoute, extra: bookModel),
        child: SizedBox(
          height: 120,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.4 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                  imageBuilder:
                      (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                  placeholder:
                      (context, url) => Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        bookModel.volumeInfo.title != null
                            ? bookModel.volumeInfo.title!
                            : 'Harry Potter and the Philosopher\'s Stone',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.textStyle20,
                      ),
                    ),
                    
                    Text(
                      '${bookModel.volumeInfo.authors![0]} ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.textStyle14.copyWith(
                        color: const Color(0xff707070),
                      ),
                    ),
                    const Spacer(),
                    BookPriceAndRatingItem(bookModel: bookModel),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
