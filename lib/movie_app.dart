import 'package:flutter/material.dart';
import 'package:new_movie_app/core/routes/app_routes.dart';
import 'package:new_movie_app/core/theming/colors_manager.dart';

import 'feature/home/ui/screens/user_home_view.dart';
class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: ColorsManager.black),
      debugShowCheckedModeBanner: false,
      //home: const UserHomeView(),
      routes: AppRoutes.routes,
    );
  }
}
