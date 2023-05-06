import 'package:easy_book/features/home/presentation/views/home_view.dart';
import 'package:easy_book/features/onboard/presentation/views/onboard_views.dart';
import 'package:easy_book/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class RouterApp {
  static const kHomeView = '/homeView';
  static const kOnboardView = '/onboardView';

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
    ],
  );
}
