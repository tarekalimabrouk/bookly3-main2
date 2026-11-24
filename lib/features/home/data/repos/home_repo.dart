
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/doc.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Doc>>> fetchNewsetBooks();

  Future<Either<Failure, List<Doc>>> fetchFeaturedBooks();
}
