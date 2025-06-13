import 'package:easy_localization/easy_localization.dart';

class AppLocalization {
  // The initialization is now handled directly in main.dart
  // This class provides helper methods for translation

  static String translate(String key) {
    return key.tr();
  }

  static String translateWithArgs(String key, List<String> args) {
    return key.tr(args: args);
  }

  static String translateWithNamedArgs(
      String key, Map<String, String> namedArgs) {
    return key.tr(namedArgs: namedArgs);
  }
}
