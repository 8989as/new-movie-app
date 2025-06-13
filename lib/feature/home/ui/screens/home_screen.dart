import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/core/theming/styles_manager.dart';
import 'package:movies/core/theming/values_manager.dart';
import 'package:movies/core/theming/font_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // Placeholder pages for bottom nav
  final List<Widget> _pages = [
    const _HomePlaceholder(),
    const _MoviesPlaceholder(),
    const _ProfilePlaceholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: ColorManager.primary,
          unselectedItemColor: ColorManager.textSecondary,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              activeIcon: const Icon(Icons.home),
              label: 'home.title'.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.movie_outlined),
              activeIcon: const Icon(Icons.movie),
              label: 'movies.title'.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              activeIcon: const Icon(Icons.person),
              label: 'profile.title'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder Widgets
class _HomePlaceholder extends StatelessWidget {
  const _HomePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
            size: 80.r,
            color: ColorManager.primary,
          ),
          SizedBox(height: AppSize.s20.h),
          Text(
            'Home Feature',
            style: getBoldStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSize.s24.sp,
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            'Coming Soon',
            style: getMediumStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSize.s16.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class _MoviesPlaceholder extends StatelessWidget {
  const _MoviesPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.movie,
            size: 80.r,
            color: ColorManager.primary,
          ),
          SizedBox(height: AppSize.s20.h),
          Text(
            'Movies Feature',
            style: getBoldStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSize.s24.sp,
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            'Coming Soon',
            style: getMediumStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSize.s16.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfilePlaceholder extends StatelessWidget {
  const _ProfilePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 80.r,
            color: ColorManager.primary,
          ),
          SizedBox(height: AppSize.s20.h),
          Text(
            'Profile Feature',
            style: getBoldStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSize.s24.sp,
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            'Coming Soon',
            style: getMediumStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSize.s16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
