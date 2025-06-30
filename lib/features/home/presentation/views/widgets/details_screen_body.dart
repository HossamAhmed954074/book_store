import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/core/widgets/error_custom_widget.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/view_model/similler_books_cubit/cubit/similler_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/books_details_price_preview.dart';
import 'package:book_store/features/home/presentation/views/widgets/books_details_text.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_details_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var bookModel = GoRouter.of(context).state.extra as BookModel;
    BlocProvider.of<SimillerBooksCubit>(
      context,
    ).fetchSimmilarBooks(category: bookModel.volumeInfo.categories?[0] ?? 'programming');
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
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.27,
                            child: CustomBookImage(bookModel: bookModel),
                          ), // Placeholder image
                          const SizedBox(height: 10),
                          BookTextDetails(bookModel: bookModel),
                          BookDetailsPriceAndPreview(bookModel: bookModel),
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
                                  const SizedBox(width: 5),
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
                              flex: 6,
                              child: BlocBuilder<
                                SimillerBooksCubit,
                                SimillerBooksState
                              >(
                                builder: (context, state) {
                                  if (state is SimillerBooksLoaded) {
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          state
                                              .books
                                              .length, // Example item count
                                      itemBuilder: (context, index) {
                                        return CustomBookImage(
                                          bookModel: state.books[index],
                                        ); // Placeholder for book image
                                      },
                                    );
                                  } else if (state is SimillerBooksError) {
                                    return ErrorCustomWidget(
                                      errorMessage: state.message,
                                    );
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
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
