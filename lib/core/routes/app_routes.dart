import 'package:flutter/material.dart';
import 'package:new_movie_app/feature/auth/ui/screens/forgot_password_screen.dart';
import 'package:new_movie_app/feature/auth/ui/screens/register_screen.dart';
import 'package:new_movie_app/feature/home/ui/screens/user_home_view.dart';
import 'package:new_movie_app/feature/onBoarding/ui/screens/explore_tab.dart';

import '../../feature/auth/ui/screens/login_screen.dart';
import '../../feature/explore/ui/screens/explore_screen.dart';
import '../../feature/onBoarding/ui/screens/on_boarding_screen.dart';
import '../../splash/screens/splash_screen.dart';
import 'app_routes_name.dart';

class AppRoutes{
  static Map<String ,Widget Function(BuildContext)> routes ={
    AppRoutesName.splash : (_)=> SplashScreen(),
    AppRoutesName.explore : (_)=> ExploreTab(),
    AppRoutesName.onBoarding : (_)=> OnBoardingScreen(),
    AppRoutesName.login : (_)=> Login(),
    AppRoutesName.signUp: (_)=> RegisterScreen(),
    AppRoutesName.reset: (_)=> ForgotPasswordScreen(),
    AppRoutesName.userHomeView: (_)=> UserHomeView(),
  };
}
