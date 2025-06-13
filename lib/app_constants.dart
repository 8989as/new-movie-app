// Constants for the movie app

class AppConstants {
  // API
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey =
      "3b5aac073877578f0fb9b24fcdfc635f"; // Using a valid TMDB API key
  static const String imageBaseUrl = "https://image.tmdb.org/t/p/w500";
  static const String originalImageBaseUrl =
      "https://image.tmdb.org/t/p/original";
  static const String noImageAvailable =
      "https://www.actbus.net/fleetwiki/images/8/84/No_image_available.png";

  // Routes
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String moviesRoute = "/movies";
  static const String movieDetailsRoute = "/movie-details";
  static const String searchRoute = "/search";
  static const String profileRoute = "/profile";
  static const String settingsRoute = "/settings";
  static const String editProfileRoute = "/edit-profile";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgot-password";

  // Preferences Keys
  static const String prefsKeyLang = "PREFS_KEY_LANG";
  static const String prefsKeyToken = "PREFS_KEY_TOKEN";
  static const String prefsKeyUser = "PREFS_KEY_USER";
  static const String prefsKeyLoggedIn = "PREFS_KEY_LOGGED_IN";
  static const String prefsKeyThemeMode = "PREFS_KEY_THEME_MODE";

  // App Info
  static const String appName = "Movie App";
  static const String appVersion = "1.0.0";

  // Error Messages
  static const String networkErrorMessage =
      "Please check your internet connection";
  static const String defaultErrorMessage =
      "Something went wrong, please try again later";
  static const String timeoutErrorMessage =
      "Request timed out, please try again";

  // Durations
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Pagination
  static const int defaultPageSize = 20;
  static const int initialPage = 1;
}
