import 'package:book_store/core/router/app_router.dart';
import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/presentation/view_model/newest_books_cubit/cubit/newest_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          onPressdSearch: () {
            GoRouter.of(context).push(AppRouter.searchRoute);
          },
        ),
        Expanded(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeaturedBooksListView(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Best Seller',
                        style: TextStyles.textStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
              BlocBuilder<NewestBooksCubit, NewestBooksState>(
                builder: (context, state) {
                  if (state is NewestBooksLoaded) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) =>
                            BestSellerItem(bookModel: state.books[index]),
                        childCount:
                            state.books.length, // Adjust the count as needed
                      ),
                    );
                  } else {
                    return SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
    //isClickSearch == true ? FloatingSearchBarCustom() : SizedBox(),
  }
}
