import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSearchBooks({required String value}) async {
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchSearchBooks(value: value);

    result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (booksValue) {
      emit(SearchBooksSuccess(booksValue));
    });
  }
}
