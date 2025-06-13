import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'avatar_widget.dart';

class AvatarSelectionDialog extends StatelessWidget {
  final Function(String) onAvatarSelected;

  const AvatarSelectionDialog({
    super.key,
    required this.onAvatarSelected,
  });

  @override
  Widget build(BuildContext context) {
    // Sample avatar images - these should be replaced with your actual avatar assets
    final List<String> avatars = [
      'assets/images/avatars/avatar1.png',
      'assets/images/avatars/avatar2.png',
      'assets/images/avatars/avatar3.png',
      'assets/images/avatars/avatar4.png',
      'assets/images/avatars/avatar5.png',
      'assets/images/avatars/avatar6.png',
      'assets/images/avatars/avatar7.png',
      'assets/images/avatars/avatar8.png',
      'assets/images/avatars/avatar9.png',
    ];

    return Dialog(
      backgroundColor: ColorManager.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 160),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Pick Avatar',
              style: TextStyle(
                color: ColorManager.primary,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: avatars.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    onAvatarSelected(avatars[index]);
                    Navigator.of(context).pop();
                  },
                  child: AvatarWidget(
                    avatarUrl: avatars[index],
                    size: 80,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
