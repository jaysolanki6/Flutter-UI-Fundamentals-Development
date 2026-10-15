
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
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp Chat'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      backgroundColor: const Color(0xFFECE5DD),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.03),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: screenWidth * 0.8,
            ),
            padding: EdgeInsets.all(screenWidth * 0.035),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(screenWidth * 0.04),
                topRight: Radius.circular(screenWidth * 0.04),
                bottomRight: Radius.circular(screenWidth * 0.04),
              ),
            ),
            child: const Text(
              'Hello! How are you? This is a responsive WhatsApp-style chat bubble.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
