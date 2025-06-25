import 'package:book_store/core/utils/service_locator.dart';
import 'package:book_store/features/home/data/repo/home_repo_implement.dart';
import 'package:book_store/features/home/presentation/view_model/featured_books_cubit/cubit/featured_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(getIt.get<HomeRepoImplement>())
                    ..fetchFeaturedBooks(),
          child: BookDetailsViewBody(),
        ),
      ),
    );
  }
}
