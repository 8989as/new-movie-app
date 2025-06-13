import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'avatar_selection_dialog.dart';

class AvatarWidget extends StatelessWidget {
  final String avatarUrl;
  final double size;
  final VoidCallback? onTap;
  final bool isEditable;
  final Function(String)? onAvatarChanged;

  const AvatarWidget({
    Key? key,
    required this.avatarUrl,
    this.size = 118.0,
    this.onTap,
    this.isEditable = false,
    this.onAvatarChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEditable ? () => _showAvatarSelectionDialog(context) : onTap,
      child: Stack(
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorManager.accent,
                width: 2.0,
              ),
              image: avatarUrl.isNotEmpty
                  ? DecorationImage(
                      image: AssetImage(avatarUrl),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: avatarUrl.isEmpty
                ? Icon(
                    Icons.person,
                    color: ColorManager.accent,
                    size: size * 0.5,
                  )
                : null,
          ),
          if (isEditable)
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: size / 3,
                height: size / 3,
                decoration: BoxDecoration(
                  color: ColorManager.accent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorManager.background,
                    width: 2,
                  ),
                ),
                child: Icon(
                  Icons.edit,
                  color: ColorManager.background,
                  size: size / 6,
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _showAvatarSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AvatarSelectionDialog(
          onAvatarSelected: (String selectedAvatar) {
            if (onAvatarChanged != null) {
              onAvatarChanged!(selectedAvatar);
            }
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
