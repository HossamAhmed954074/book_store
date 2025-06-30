
import 'package:book_store/core/errors/failures.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 
 Future<Either<Failures, List<BookModel>>> fetchNewsetBooks({required String category});
 Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks({required String category});
 Future<Either<Failures, List<BookModel>>> fetchSimmilarBooks({required String category});
 

}
