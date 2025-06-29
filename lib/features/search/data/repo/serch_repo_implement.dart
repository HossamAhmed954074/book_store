import 'package:book_store/core/errors/failures.dart';
import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/features/search/data/repo/serch_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplement implements SerchRepo{

SearchRepoImplement(this._apiService);

  final ApiService _apiService;

  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchBooks({required String category}) async{
   try {
      var data = await _apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=$category&Sorting=relevance',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}