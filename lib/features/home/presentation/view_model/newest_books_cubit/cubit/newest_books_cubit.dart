import 'package:bloc/bloc.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks({required String category}) async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewsetBooks(category: category);
    result.fold(
      (failure) {
        emit(NewestBooksError(failure.errMessage));
      },
      (books) {
        emit(NewestBooksLoaded(books));
      },
    );
  }

}
