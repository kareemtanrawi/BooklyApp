import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/Features/home/presentation/manger/feature_books_cubit/feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBookState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksIntial());
  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeatureBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }
}
