import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/presentation/manger/news_books_cubit/news_books_state.dart';

import '../../../data/repos/home_repo.dart';

class NewsetBooksCubit extends Cubit<NewsetBookState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksIntial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
