
import 'package:flutter/material.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello, Flutter Learner!',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.purple,
      ),
      textAlign: TextAlign.center,
    );
  }
}
