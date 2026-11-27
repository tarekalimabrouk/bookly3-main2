import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/book_model/doc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.hpmeRepo) : super(NewsetBooksInitial());
  
  final HomeRepo hpmeRepo;
  Future<void> fectchNewestBooks() async {
    emit(NewsetBooksLoding());
    var result = await hpmeRepo.fetchFeaturedBooks();
    result.fold((failure){
      emit(NewsetBooksFailure(failure.errMessage));
    },(books){
      emit(NewsetBooksSucces(books));
    },);
  }
}
