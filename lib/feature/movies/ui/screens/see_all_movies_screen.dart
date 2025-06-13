import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/core/theming/styles_manager.dart';
import 'package:movies/core/theming/values_manager.dart';
import 'package:movies/core/theming/font_manager.dart';

class SeeAllMoviesScreen extends StatelessWidget {
  final String title;
  final String category;

  const SeeAllMoviesScreen(
      {Key? key, required this.title, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: getSemiBoldStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSize.s20,
          ),
        ),
      ),
      body: Center(
        child: Text('See All Movies Screen - Category: $category'),
      ),
    );
  }
}
