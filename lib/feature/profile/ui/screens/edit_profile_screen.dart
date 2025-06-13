import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/core/theming/styles_manager.dart';
import 'package:movies/core/theming/values_manager.dart';
import 'package:movies/core/theming/font_manager.dart';
import 'package:movies/feature/profile/ui/widgets/avatar_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;

  String _selectedAvatar = 'assets/images/avatars/avatar1.png';

  @override
  void initState() {
    super.initState();
    // Initialize with mock data - in a real app, this would come from a repository
    _nameController = TextEditingController(text: 'John Doe');
    _emailController = TextEditingController(text: 'john.doe@example.com');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _onAvatarChanged(String newAvatar) {
    setState(() {
      _selectedAvatar = newAvatar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundDark,
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: getSemiBoldStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSize.s20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppPadding.p16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: AppSize.s20.toDouble()),

                // Avatar with edit button
                Center(
                  child: AvatarWidget(
                    avatarUrl: _selectedAvatar,
                    size: 120,
                    isEditable: true,
                    onAvatarChanged: _onAvatarChanged,
                  ),
                ),

                SizedBox(height: AppSize.s30.toDouble()),

                // Name field
                TextFormField(
                  controller: _nameController,
                  style: getRegularStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: getMediumStyle(color: Colors.grey.shade400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade700),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.accent),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.error),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.error),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),

                SizedBox(height: AppSize.s20),

                // Email field
                TextFormField(
                  controller: _emailController,
                  style: getRegularStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: getMediumStyle(color: Colors.grey.shade400),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade700),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.accent),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.error),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.error),
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    // Basic email validation
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),

                SizedBox(height: AppSize.s40),

                // Save button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Save profile logic would go here
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Profile updated successfully'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        Navigator.pop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.accent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s8),
                      ),
                    ),
                    child: Text(
                      'Save Changes',
                      style: getBoldStyle(
                        color: Colors.white,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: AppSize.s20),

                // Cancel button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.grey.shade700),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s8),
                      ),
                    ),
                    child: Text(
                      'Cancel',
                      style: getMediumStyle(
                        color: Colors.grey.shade300,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
