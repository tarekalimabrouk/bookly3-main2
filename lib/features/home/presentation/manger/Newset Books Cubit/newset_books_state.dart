part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoding extends NewsetBooksState {}

final class NewsetBooksSucces extends NewsetBooksState {
  final List<BookModel> books;

 const NewsetBooksSucces(this.books);
}

final class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}
