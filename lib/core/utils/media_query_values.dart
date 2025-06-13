import 'package:flutter/material.dart';

class MediaQueryValues {
  final BuildContext context;

  MediaQueryValues(this.context);

  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
  double get topPadding => MediaQuery.of(context).viewPadding.top;
  double get bottomPadding => MediaQuery.of(context).viewPadding.bottom;

  double responsiveHeight(double value) => height * value;
  double responsiveWidth(double value) => width * value;

  // Padding values based on screen size
  EdgeInsets get screenPadding => EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.02,
      );

  // Check if device is in portrait mode
  bool get isPortrait => height > width;

  // Check if device is tablet
  bool get isTablet => width > 600;

  // Check if device is small
  bool get isSmallDevice => width < 360;

  // Get safe area dimensions
  double get safeHeight => height - topPadding - bottomPadding;
}
