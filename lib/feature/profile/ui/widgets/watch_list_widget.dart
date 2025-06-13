import 'package:flutter/material.dart';
import 'package:movies/core/theming/colors_manager.dart';

class WatchListWidget extends StatelessWidget {
  const WatchListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample watchlist data
    final List<Map<String, dynamic>> watchlistItems = [
      {
        'title': 'Dune',
        'imageUrl': 'assets/images/placeholders/movie6.jpg',
        'releaseDate': '2021',
        'rating': 4.5,
      },
      {
        'title': 'The Batman',
        'imageUrl': 'assets/images/placeholders/movie7.jpg',
        'releaseDate': '2022',
        'rating': 4.3,
      },
      {
        'title': 'No Time To Die',
        'imageUrl': 'assets/images/placeholders/movie8.jpg',
        'releaseDate': '2021',
        'rating': 4.0,
      },
      {
        'title': 'Spider-Man: No Way Home',
        'imageUrl': 'assets/images/placeholders/movie9.jpg',
        'releaseDate': '2021',
        'rating': 4.7,
      },
      {
        'title': 'Top Gun: Maverick',
        'imageUrl': 'assets/images/placeholders/movie10.jpg',
        'releaseDate': '2022',
        'rating': 4.8,
      },
    ];

    return Container(
      color: ColorManager.backgroundDark,
      child: watchlistItems.isEmpty
          ? const Center(
              child: Text(
                'Your watchlist is empty',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: watchlistItems.length,
              itemBuilder: (context, index) {
                final item = watchlistItems[index];
                return Container(
                  decoration: BoxDecoration(
                    color: ColorManager.surfaceDark,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Movie poster
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                item['imageUrl'],
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[800],
                                    child: const Icon(
                                      Icons.movie,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  );
                                },
                              ),
                              // Watch button overlay
                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: ColorManager.accent,
                                    ),
                                    iconSize: 20,
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(
                                      minWidth: 36,
                                      minHeight: 36,
                                    ),
                                    onPressed: () {
                                      // Navigate to movie details or player
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Movie info
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item['releaseDate'],
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: ColorManager.accent,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      item['rating'].toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
