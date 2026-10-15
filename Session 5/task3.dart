
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SongInfoScreen(),
    );
  }
}

class SongInfoScreen extends StatelessWidget {
  const SongInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Song Information'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Kesariya',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Artist: Arijit Singh',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                debugPrint('Play Now button clicked!');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Play Now',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Red heart icon
            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
