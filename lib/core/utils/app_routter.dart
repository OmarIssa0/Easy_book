import 'package:easy_book/core/utils/service_locatro.dart';
import 'package:easy_book/features/details/presentation/views/details_view.dart';
import 'package:easy_book/features/home/data/models/book_model/book_model.dart';
import 'package:easy_book/features/home/data/repos/home_repo_impl.dart';
import 'package:easy_book/features/home/presentation/manger/search_books_cubit/search_books_cubit.dart';
import 'package:easy_book/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:easy_book/features/home/presentation/views/home_view.dart';
import 'package:easy_book/features/onboard/presentation/views/onboard_views.dart';
import 'package:easy_book/features/search/presentation/view/search_view.dart';
import 'package:easy_book/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RouterApp {
  static const kHomeView = '/homeView';
  static const kOnboardView = '/onboardView';
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kOnboardView,
        builder: (context, state) => const OnboardViews(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: DetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: SearchView(
              // bookModel: state.extra as BookModel?,
              ),
        ),
      ),
    ],
  );
}
