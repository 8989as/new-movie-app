import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';
import 'package:movies/feature/profile/ui/widgets/avatar_widget.dart';
import '../widgets/history_widget.dart';
import '../widgets/watch_list_widget.dart';
import 'edit_profile_screen.dart';

class ProfileMainScreen extends StatefulWidget {
  const ProfileMainScreen({super.key});

  @override
  State<ProfileMainScreen> createState() => _ProfileMainScreenState();
}

class _ProfileMainScreenState extends State<ProfileMainScreen> {
  int _selectedTab = 0;
  final String _avatarUrl =
      'assets/images/avatars/avatar1.png'; // Default avatar
  final String _username = 'John Doe';
  final int _watchlistCount = 24;
  final int _historyCount = 15;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundDark,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: ColorManager.surfaceDark,
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
              child: Column(
                children: [
                  // Profile info row containing picture+name and stats
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Profile picture and name column
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                AvatarWidget(
                                  avatarUrl: _avatarUrl,
                                  size: 118,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const EditProfileScreen(),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  _username,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          // Stats column
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildStatColumn(
                                      'Watchlist', _watchlistCount),
                                  _buildStatColumn('History', _historyCount),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Tabs row
                  Row(
                    children: [
                      _buildTabButton('Watchlist', 0),
                      const SizedBox(width: 16),
                      _buildTabButton('History', 1),
                    ],
                  ),
                ],
              ),
            ),
            // Tab content area
            Expanded(
              child: _selectedTab == 0
                  ? const WatchListWidget()
                  : const HistoryWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: TextStyle(
            color: ColorManager.accent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildTabButton(String label, int tabIndex) {
    final isSelected = _selectedTab == tabIndex;

    return Expanded(
      child: GestureDetector(
        onTap: () => _onTabSelected(tabIndex),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isSelected ? ColorManager.accent : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? ColorManager.accent : Colors.white,
              fontSize: 16,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
