import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/repo/home_repo_implement.dart';
import 'package:book_store/features/search/data/repo/serch_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(getIt.get<ApiService>()));
  getIt.registerSingleton<SearchRepoImplement>(SearchRepoImplement(getIt.get<ApiService>()));
 
}



