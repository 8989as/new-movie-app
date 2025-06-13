import 'package:flutter/material.dart';
import 'package:movies/core/routes/app_routes.dart';
import 'package:movies/feature/auth/ui/screens/login_screen.dart';
import 'package:movies/feature/auth/ui/screens/register_screen.dart';
import 'package:movies/feature/auth/ui/screens/forgot_password_screen.dart';
import 'package:movies/feature/home/ui/screens/home_screen.dart';
import 'package:movies/feature/movies/ui/screens/movies_screen.dart';
import 'package:movies/feature/movies/ui/screens/movie_details_screen.dart';
import 'package:movies/feature/movies/ui/screens/search_screen.dart';
import 'package:movies/feature/movies/ui/screens/see_all_movies_screen.dart';
import 'package:movies/feature/profile/ui/screens/profile_screen.dart';
import 'package:movies/feature/profile/ui/screens/edit_profile_screen.dart';
import 'package:movies/feature/profile/ui/screens/settings_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
            builder: (_) =>
                const HomeScreen()); // Temporary, will be replaced with SplashScreen

      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case AppRoutes.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());

      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case AppRoutes.movies:
        return MaterialPageRoute(builder: (_) => const MoviesScreen());

      case AppRoutes.movieDetails:
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        final int movieId = args['movieId'] as int;
        return MaterialPageRoute(
            builder: (_) => MovieDetailsScreen(movieId: movieId));

      case AppRoutes.search:
        return MaterialPageRoute(builder: (_) => const SearchScreen());

      case AppRoutes.seeAllMovies:
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        final String title = args['title'] as String;
        final String category = args['category'] as String;
        return MaterialPageRoute(
            builder: (_) =>
                SeeAllMoviesScreen(title: title, category: category));

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case AppRoutes.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());

      case AppRoutes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Route Not Found'),
        ),
        body: const Center(
          child: Text('Route not found!'),
        ),
      ),
    );
  }
}
