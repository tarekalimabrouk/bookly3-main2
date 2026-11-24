
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/book_model/doc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Doc>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'search.json?q=flutter&limit=10',
      );

      BookModel bookModel = BookModel.fromJson(data);

      return Right(bookModel.docs ?? []);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Doc>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'search.json?q=subject:programming&limit=10',
      );

      BookModel bookModel = BookModel.fromJson(data);

      return Right(bookModel.docs ?? []);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
