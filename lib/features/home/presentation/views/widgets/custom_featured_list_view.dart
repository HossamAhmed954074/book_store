import 'package:book_store/core/router/app_router.dart';
import 'package:book_store/core/widgets/error_custom_widget.dart';
import 'package:book_store/core/widgets/loading_indecator.dart';
import 'package:book_store/features/home/presentation/view_model/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoaded) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.29,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    GoRouter.of(
                      context,
                    ).push(AppRouter.detailsRoute, extra: state.books[index]);
                  },
                  child: CustomBookImage(bookModel: state.books[index]),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksError) {
          return ErrorCustomWidget(errorMessage: state.message);
        } else {
          return const LoadingIndecatorCustom();
        }
      },
    );
  }
}
