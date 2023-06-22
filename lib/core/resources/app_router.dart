import 'package:flutter/cupertino.dart';
import 'package:flutter_sofimovie_app/core/presentation/pages/main_page.dart';
import 'package:flutter_sofimovie_app/core/resources/app_routes.dart';
import 'package:flutter_sofimovie_app/movies/presentation/views/movie_details_view.dart';
import 'package:flutter_sofimovie_app/movies/presentation/views/movies_view.dart';
import 'package:flutter_sofimovie_app/movies/presentation/views/popular_movies_view.dart';
import 'package:flutter_sofimovie_app/movies/presentation/views/top_rated_movies_view.dart';
import 'package:flutter_sofimovie_app/search/presentation/views/search_view.dart';
import 'package:flutter_sofimovie_app/tv_shows/presentation/views/popular_tv_shows_view.dart';
import 'package:flutter_sofimovie_app/tv_shows/presentation/views/tv_show_details_view.dart';
import 'package:flutter_sofimovie_app/tv_shows/presentation/views/tv_shows_view.dart';
import 'package:flutter_sofimovie_app/watchlist/presentation/views/watchlist_view.dart';
import 'package:go_router/go_router.dart';

const String moviesPath = '/movies';
const String movieDetailsPath = '/movieDetails/:movieId';
const String popularMoviesPath = '/popularMovies';
const String topRatedMoviesPath = '/topRatedMovies';
const String tvShowsPath = '/tvShows';
const String tvShowDetailsPath = '/tvShowDetails/:tvShowId';
const String popularTvShowsPath = '/popularTvShows';
const String topRatedTvShowsPath = '/topRatedTvShows';
const String searchPath = '/search';
const String watchlistPath = '/watchlist';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: moviesPath,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainPage(child: child),
        routes: [
          GoRoute(
            path: moviesPath,
            name: AppRoutes.moviesRoute,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: MoviesView(),
            ),
            routes: [
              GoRoute(
                path: movieDetailsPath,
                name: AppRoutes.movieDetailsRoute,
                pageBuilder: (context, state) => CupertinoPage(
                  child: MovieDetailsView(
                    movieId: int.parse(state.pathParameters['movieId']!),
                  ),
                ),
              ),
              GoRoute(
                path: popularMoviesPath,
                name: AppRoutes.popularMoviesRoute,
                pageBuilder: (context, state) => const CupertinoPage(
                  child: PopularMoviesView(),
                ),
              ),
              GoRoute(
                path: topRatedMoviesPath,
                name: AppRoutes.topRatedMoviesRoute,
                pageBuilder: (context, state) => const CupertinoPage(
                  child: TopRatedMoviesView(),
                ),
              ),
            ],
          ),
          GoRoute(
            path: tvShowsPath,
            name: AppRoutes.tvShowsRoute,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: TVShowsView(),
            ),
            routes: [
              GoRoute(
                path: tvShowDetailsPath,
                name: AppRoutes.tvShowDetailsRoute,
                pageBuilder: (context, state) => CupertinoPage(
                  child: TVShowDetailsView(
                    tvShowId: int.parse(state.pathParameters['tvShowId']!),
                  ),
                ),
              ),
              GoRoute(
                path: popularTvShowsPath,
                name: AppRoutes.popularTvShowsRoute,
                pageBuilder: (context, state) => const CupertinoPage(
                  child: PopularTVShowsView(),
                ),
              ),
              GoRoute(
                path: topRatedTvShowsPath,
                name: AppRoutes.topRatedTvShowsRoute,
                pageBuilder: (context, state) => const CupertinoPage(
                  child: TopRatedMoviesView(),
                ),
              ),
            ],
          ),
          GoRoute(
            path: watchlistPath,
            name: AppRoutes.watchlistRoute,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: WatchlistView(),
            ),
          ),
          GoRoute(
            path: searchPath,
            name: AppRoutes.searchRoute,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: SearchView(),
            ),
          ),
        ],
      ),
    ],
  );
}
