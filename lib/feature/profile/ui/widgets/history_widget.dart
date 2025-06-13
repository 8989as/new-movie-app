import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample movie history data
    final List<Map<String, dynamic>> historyItems = [
      {
        'title': 'The Dark Knight',
        'imageUrl': 'assets/images/placeholders/movie1.jpg',
        'date': '2 days ago',
        'progress': 0.85,
      },
      {
        'title': 'Inception',
        'imageUrl': 'assets/images/placeholders/movie2.jpg',
        'date': '1 week ago',
        'progress': 1.0,
      },
      {
        'title': 'Interstellar',
        'imageUrl': 'assets/images/placeholders/movie3.jpg',
        'date': '3 weeks ago',
        'progress': 1.0,
      },
      {
        'title': 'The Avengers',
        'imageUrl': 'assets/images/placeholders/movie4.jpg',
        'date': '1 month ago',
        'progress': 0.6,
      },
      {
        'title': 'Joker',
        'imageUrl': 'assets/images/placeholders/movie5.jpg',
        'date': '1 month ago',
        'progress': 1.0,
      },
    ];

    return Container(
      color: ColorManager.backgroundDark,
      child: historyItems.isEmpty
          ? const Center(
              child: Text(
                'No watch history yet',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12),
              itemCount: historyItems.length,
              itemBuilder: (context, index) {
                final item = historyItems[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Movie thumbnail
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          item['imageUrl'],
                          width: 100,
                          height: 60,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 100,
                              height: 60,
                              color: Colors.grey[800],
                              child:
                                  const Icon(Icons.movie, color: Colors.white),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Movie details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item['date'],
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 6),
                            // Progress indicator
                            LinearProgressIndicator(
                              value: item['progress'],
                              backgroundColor: Colors.grey[800],
                              valueColor: AlwaysStoppedAnimation<Color>(
                                ColorManager.accent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
