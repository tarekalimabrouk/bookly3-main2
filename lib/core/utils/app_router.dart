import 'package:bookly/features/Splash/presentation/views/Splash_View.dart';
import 'package:bookly/features/home/data/presentation/views/book__details_view.dart';
import 'package:bookly/features/home/data/presentation/views/home_view.dart';
import 'package:bookly/features/home/data/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/features/search/search_view.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {

 static const kHomeView='/homeView';
  static const kBookDetailsView='/bookDetailsView';
 static const kSearchView='/searchView';

static final router = GoRouter(routes: [
GoRoute(
    path: '/',
    builder: (context, state) =>const SplashView(),
  ),

  GoRoute(
    path: kSearchView,
    builder: (context, state) =>const SearchView(),
  ),
  GoRoute(
    path:kHomeView ,
    builder: (context, state) =>const HomeView(),
  ),
 GoRoute(
  path: kBookDetailsView,
  builder: (context, state) => const BookDetilsView(),
),
]);
}