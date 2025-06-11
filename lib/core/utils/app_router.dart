import 'package:furni_app/Features/board_screen/presentation/views/onboard_view.dart';
import 'package:furni_app/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {
  static const kOnBoardView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [


      GoRoute(
        path: kOnBoardView,
        builder: (context, state) => const OnboardView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),

    ],
  );
}
