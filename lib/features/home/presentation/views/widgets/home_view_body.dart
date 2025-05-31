import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeaturedBooksListView(),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
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
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => BestSellerItem(),
                  childCount: 10, // Adjust the count as needed
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
