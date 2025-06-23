import 'package:book_store/features/home/presentation/views/screens/book_details_view.dart';
import 'package:book_store/features/home/presentation/views/screens/home_view.dart';
import 'package:book_store/features/splash/presentation/views/screens/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeRoute = '/home';
  static const String detailsRoute = '/details';
  static const String searchRoute = '/search';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: homeRoute, builder: (context, state) => const HomeView()),
      GoRoute(
        path: detailsRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
     
    ],
  );
}
