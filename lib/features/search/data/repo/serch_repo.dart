import 'package:book_store/core/errors/failures.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract interface class SerchRepo {
  Future<Either<Failures, List<BookModel>>> fetchSearchBooks({required String category});
}