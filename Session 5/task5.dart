
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Local asset image at the top
              Image.asset(
                'assets/album_cover.jpg',
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),

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

              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 40,
              ),

              const SizedBox(height: 15),

              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Arijit_Singh_at_2016_GiMA_Awards.jpg/250px-Arijit_Singh_at_2016_GiMA_Awards.jpg',
                width: 180,
                height: 180,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.grey,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
