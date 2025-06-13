import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/core/theming/styles_manager.dart';
import 'package:movies/core/theming/values_manager.dart';
import 'package:movies/core/theming/font_manager.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: getSemiBoldStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSize.s20,
          ),
        ),
      ),
      body: const Center(
        child: Text('Forgot Password Screen - Coming Soon'),
      ),
    );
  }
}
