part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksLoaded extends NewestBooksState {
  final List<BookModel> books;
  const NewestBooksLoaded(this.books);
}
final class NewestBooksError extends NewestBooksState {
  final String message;

  const NewestBooksError(this.message);

}


