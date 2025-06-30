import 'package:book_store/core/utils/service_locator.dart';
import 'package:book_store/features/catigories/presentation/view/screens/catigories_screen.dart';
import 'package:book_store/features/home/data/repo/home_repo_implement.dart';
import 'package:book_store/features/home/presentation/view_model/similler_books_cubit/cubit/similler_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/screens/book_details_view.dart';
import 'package:book_store/features/home/presentation/views/screens/home_view.dart';
import 'package:book_store/features/search/data/repo/serch_repo_implement.dart';
import 'package:book_store/features/search/presentation/view/screens/search_screen.dart';
import 'package:book_store/features/search/presentation/view_model/search_books_cubit/cubit/search_books_cubit.dart';
import 'package:book_store/features/splash/presentation/views/screens/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String categoryRoute = '/catigories';
  static const String homeRoute = '/home';
  static const String detailsRoute = '/details';
  static const String searchRoute = '/search';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: categoryRoute, builder: (context, state) =>  CatigoriesScreen()),
      GoRoute(path: homeRoute, builder: (context, state) =>  HomeView(category: state.extra as String ,)),
      GoRoute(
        path: searchRoute,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) =>
                      SearchBooksCubit(getIt.get<SearchRepoImplement>()),
              child: SearchScreen(),
            ),
      ),
      GoRoute(
        path: detailsRoute,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) =>
                      SimillerBooksCubit(getIt.get<HomeRepoImplement>()),
              child: const BookDetailsView(),
            ),
      ),
    ],
  );
}
