import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/storage/shared_prefs_manager.dart';
import 'movie_app.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize EasyLocalization
    await EasyLocalization.ensureInitialized();

    // Initialize SharedPreferences
    await SharedPrefsManager.init();

    // ScreenUtil will be initialized in the builder

    // Set system UI overlay style
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    // Force portrait orientation
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // Handle errors
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      log('Flutter error: ${details.exception}', stackTrace: details.stack);
    };

    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations/',
        fallbackLocale: const Locale('en'),
        child: ScreenUtilInit(
          designSize: const Size(375, 812), // iPhone X design size
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => const MovieApp(),
        ),
      ),
    );
  }, (error, stackTrace) {
    log('Caught error in runZonedGuarded',
        error: error, stackTrace: stackTrace);
  });
}
