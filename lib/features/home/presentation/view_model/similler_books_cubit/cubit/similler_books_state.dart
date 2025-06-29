part of 'similler_books_cubit.dart';

sealed class SimillerBooksState extends Equatable {
  const SimillerBooksState();

  @override
  List<Object> get props => [];
}

final class SimillerBooksInitial extends SimillerBooksState {}
final class SimillerBooksLoading extends SimillerBooksState{}
final class SimillerBooksLoaded extends SimillerBooksState{

final List<BookModel> books;

  const SimillerBooksLoaded(this.books);
}
final class SimillerBooksError extends SimillerBooksState{
  final String message;

  const SimillerBooksError(this.message);

}

