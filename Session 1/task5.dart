
import 'package:flutter/material.dart';
import 'user_greeting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaProfile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,

      // AppBar
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              debugPrint('Search icon tapped!');
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              debugPrint('Settings icon tapped!');
            },
          ),
        ],
      ),

      // Body and widget tree
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserGreeting(),
            SizedBox(height: 20),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            ),
          ],
        ),
      ),

      // Floating action button
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Add new post!'),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
