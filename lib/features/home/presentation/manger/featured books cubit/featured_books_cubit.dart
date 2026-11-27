import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/book_model/doc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.hpmeRepo) : super(FeaturedBooksInitial());

  final HomeRepo hpmeRepo;
  Future<void> fectchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await hpmeRepo.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBooksFailure(failure.errMessage));
    },(books){
      emit(FeaturedBooksSuccess(books));
    },);
  }
}
