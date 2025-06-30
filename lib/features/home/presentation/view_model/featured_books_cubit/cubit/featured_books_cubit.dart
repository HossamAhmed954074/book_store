import 'package:bloc/bloc.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks({required String category}) async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks(category: category);
    result.fold(
      (failure) {
        emit(FeaturedBooksError(failure.errMessage));
      },
      (books) {
        emit(FeaturedBooksLoaded(books));
      },
    );
  }
}
