import 'package:book_store/core/utils/text_styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_best_seller_listview_item.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(height: 20),
          Text('Best Seller', style: TextStyles.textStyle18),
          const SizedBox(height: 5),
          Expanded(child: BestSellerListViewItem()),
        ],
      ),
    );
  }
}
