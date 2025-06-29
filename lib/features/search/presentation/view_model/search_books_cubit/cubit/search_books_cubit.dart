import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/features/search/data/repo/serch_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.serchRepo) : super(SearchBooksInitial());

  final SerchRepo serchRepo;

  fetchSearchBooks({required String category}) async {
    emit(SearchBooksLoading());
    var result = await serchRepo.fetchSearchBooks(category: category);
    result.fold(
      (failure) => emit(SearchBooksError(failure.errMessage)),
      (books) => emit(SearchBooksLoaded(books)),
    );
    log('fetchSearchBooks');
  }
}
