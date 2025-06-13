import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:movies/core/theming/theme_manager.dart';
import 'package:movies/feature/home/ui/screens/home_screen.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      themeMode:
          ThemeMode.system, // Will be controlled by state management later
      // For now, we'll use HomeScreen directly instead of RouteGenerator since we haven't
      // implemented all screens yet
      home: const HomeScreen(),
      // initialRoute: AppRoutes.splash,
      // onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
