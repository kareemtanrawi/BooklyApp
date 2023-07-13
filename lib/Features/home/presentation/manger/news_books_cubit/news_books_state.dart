import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewsetBookState extends Equatable {
  const NewsetBookState();
  @override
  List<Object> get props => [];
}

class NewsetBooksIntial extends NewsetBookState {}

class NewsetBooksLoading extends NewsetBookState {}

class NewsetBooksSuccess extends NewsetBookState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewsetBookState {
  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}
