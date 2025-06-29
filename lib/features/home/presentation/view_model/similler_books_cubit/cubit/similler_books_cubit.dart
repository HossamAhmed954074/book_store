import 'package:bloc/bloc.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similler_books_state.dart';

class SimillerBooksCubit extends Cubit<SimillerBooksState> {
  SimillerBooksCubit(this.homeRepo) : super(SimillerBooksInitial());

  final HomeRepo homeRepo;

 Future<void> fetchSimmilarBooks({required String category}) async{
    emit(SimillerBooksLoading());
    var result = await homeRepo.fetchSimmilarBooks(category: category);
     result.fold(
      (failure) {
        emit(SimillerBooksError(failure.errMessage));
      },
      (books) {
        emit(SimillerBooksLoaded(books));
      },
    );
   
  }
}
