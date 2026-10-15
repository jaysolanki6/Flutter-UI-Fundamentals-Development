
import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  final String imageUrl;
  final String playlistName;
  final int songCount;

  const PlaylistCard({
    super.key,
    required this.imageUrl,
    required this.playlistName,
    required this.songCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF282828),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 75,
                    height: 75,
                    color: Colors.grey,
                    child: const Icon(Icons.music_note),
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    playlistName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '$songCount songs',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.play_circle_fill,
              color: Color(0xFF1DB954),
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
