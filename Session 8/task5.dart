
import 'package:flutter/material.dart';

void main() {
  runApp(const MyMusicApp());
}

class MyMusicApp extends StatelessWidget {
  const MyMusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Music',

      // App-wide theme
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),

        // Global text styles
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Global button style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),

      home: const MusicHomeScreen(),
    );
  }
}

// Reusable SongTile widget
class SongTile extends StatelessWidget {
  final String songName;

  const SongTile({
    super.key,
    required this.songName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: const Icon(
          Icons.music_note,
          color: Colors.purple,
        ),

        // Uses the global text theme
        title: Text(
          songName,
          style: Theme.of(context).textTheme.titleMedium,
        ),

        // Uses the global ElevatedButton theme
        trailing: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$songName added to playlist!'),
              ),
            );
          },
          child: const Text('Add to Playlist'),
        ),
      ),
    );
  }
}

class MusicHomeScreen extends StatelessWidget {
  const MusicHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Music Playlist'),
      ),
      body: ListView(
        children: const [
          SongTile(songName: 'Kesariya'),
          SongTile(songName: 'Tum Hi Ho'),
          SongTile(songName: 'Apna Bana Le'),
          SongTile(songName: 'Heeriye'),
        ],
      ),
    );
  }
}
