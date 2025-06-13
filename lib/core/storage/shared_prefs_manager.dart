import 'dart:convert';

import 'package:movies/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsManager {
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  // Language
  static Future<String> getAppLanguage() async {
    final language = _sharedPreferences?.getString(AppConstants.prefsKeyLang);
    return language ?? 'en';
  }

  static Future<void> setAppLanguage(String language) async {
    await _sharedPreferences?.setString(AppConstants.prefsKeyLang, language);
  }

  // Theme
  static Future<String> getThemeMode() async {
    final themeMode =
        _sharedPreferences?.getString(AppConstants.prefsKeyThemeMode);
    return themeMode ?? 'system';
  }

  static Future<void> setThemeMode(String themeMode) async {
    await _sharedPreferences?.setString(
        AppConstants.prefsKeyThemeMode, themeMode);
  }

  // Authentication
  static Future<void> saveToken(String token) async {
    await _sharedPreferences?.setString(AppConstants.prefsKeyToken, token);
  }

  static String? getToken() {
    return _sharedPreferences?.getString(AppConstants.prefsKeyToken);
  }

  static Future<void> setLoggedIn(bool isLoggedIn) async {
    await _sharedPreferences?.setBool(
        AppConstants.prefsKeyLoggedIn, isLoggedIn);
  }

  static bool isLoggedIn() {
    return _sharedPreferences?.getBool(AppConstants.prefsKeyLoggedIn) ?? false;
  }

  static Future<void> saveUser(Map<String, dynamic> user) async {
    await _sharedPreferences?.setString(
        AppConstants.prefsKeyUser, jsonEncode(user));
  }

  static Map<String, dynamic>? getUser() {
    final userString = _sharedPreferences?.getString(AppConstants.prefsKeyUser);
    if (userString != null) {
      return jsonDecode(userString) as Map<String, dynamic>;
    }
    return null;
  }

  // Clear all data
  static Future<void> clearData() async {
    await _sharedPreferences?.clear();
  }
}
