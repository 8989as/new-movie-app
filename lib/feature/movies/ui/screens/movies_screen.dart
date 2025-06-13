import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/core/theming/styles_manager.dart';
import 'package:movies/core/theming/values_manager.dart';
import 'package:movies/core/theming/font_manager.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies',
          style: getSemiBoldStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSize.s20,
          ),
        ),
      ),
      body: const Center(
        child: Text('Movies Screen - Coming Soon'),
      ),
    );
  }
}
