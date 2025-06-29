part of 'search_books_cubit.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}
final class SearchBooksLoading extends SearchBooksState{}
final class SearchBooksLoaded extends SearchBooksState {
  final List<BookModel> books;
  const SearchBooksLoaded(this.books);
}
final class SearchBooksError extends SearchBooksState {
  final String message;
  const SearchBooksError(this.message);
}


