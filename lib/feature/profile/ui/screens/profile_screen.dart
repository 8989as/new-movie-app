import 'package:flutter/material.dart';
import 'package:movies/feature/profile/ui/screens/profile_main_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // We use the ProfileMainScreen directly as it contains the full implementation
    return const ProfileMainScreen();
  }
}
