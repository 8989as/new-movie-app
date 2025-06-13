import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/core/theming/styles_manager.dart';
import 'package:movies/core/theming/values_manager.dart';
import 'package:movies/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = false;
  String _selectedLanguage = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'profile.settings'.tr(),
          style: getBoldStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSize.s18.sp,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.surface,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorManager.textPrimary),
      ),
      body: ListView(
        padding: EdgeInsets.all(AppPadding.p16.r),
        children: [
          // Theme Section
          _buildSectionTitle('profile.theme'.tr()),
          _buildSettingsCard(
            child: SwitchListTile(
              title: Text(
                'profile.darkMode'.tr(),
                style: getMediumStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSize.s16.sp,
                ),
              ),
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
              activeColor: ColorManager.primary,
            ),
          ),
          SizedBox(height: AppSize.s16.h),

          // Language Section
          _buildSectionTitle('profile.language'.tr()),
          _buildSettingsCard(
            child: Column(
              children: [
                RadioListTile<String>(
                  title: Text(
                    'English',
                    style: getMediumStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSize.s16.sp,
                    ),
                  ),
                  value: 'en',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                    context.setLocale(const Locale('en'));
                  },
                  activeColor: ColorManager.primary,
                ),
                RadioListTile<String>(
                  title: Text(
                    'العربية',
                    style: getMediumStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSize.s16.sp,
                    ),
                  ),
                  value: 'ar',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                    context.setLocale(const Locale('ar'));
                  },
                  activeColor: ColorManager.primary,
                ),
              ],
            ),
          ),
          SizedBox(height: AppSize.s16.h),

          // Notifications Section
          _buildSectionTitle('profile.notifications'.tr()),
          _buildSettingsCard(
            child: SwitchListTile(
              title: Text(
                'profile.notifications'.tr(),
                style: getMediumStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSize.s16.sp,
                ),
              ),
              value: true,
              onChanged: (value) {},
              activeColor: ColorManager.primary,
            ),
          ),
          SizedBox(height: AppSize.s16.h),

          // About Section
          _buildSectionTitle('profile.about'.tr()),
          _buildSettingsCard(
            child: ListTile(
              title: Text(
                'profile.termsAndConditions'.tr(),
                style: getMediumStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSize.s16.sp,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          _buildSettingsCard(
            child: ListTile(
              title: Text(
                'profile.privacyPolicy'.tr(),
                style: getMediumStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSize.s16.sp,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          _buildSettingsCard(
            child: ListTile(
              title: Text(
                'profile.help'.tr(),
                style: getMediumStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSize.s16.sp,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppPadding.p8.r,
        bottom: AppPadding.p8.r,
      ),
      child: Text(
        title,
        style: getBoldStyle(
          color: ColorManager.primary,
          fontSize: FontSize.s18.sp,
        ),
      ),
    );
  }

  Widget _buildSettingsCard({required Widget child}) {
    return Card(
      elevation: AppSize.s1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.s8.r),
      ),
      child: child,
    );
  }
}
