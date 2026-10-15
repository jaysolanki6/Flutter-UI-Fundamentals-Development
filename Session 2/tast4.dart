
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: FollowerCountWidget(),
      ),
    ),
  ));
}

class FollowerCountWidget extends StatefulWidget {
  const FollowerCountWidget({super.key});

  @override
  State<FollowerCountWidget> createState() =>
      _FollowerCountWidgetState();
}

class _FollowerCountWidgetState
    extends State<FollowerCountWidget> {
  int followerCount = 1200;

  String formatCount(int count) {
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }
    return count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.play_circle_fill,
          color: Colors.red,
          size: 60,
        ),
        const SizedBox(height: 10),

        const Text(
          'Subscribers',
          style: TextStyle(fontSize: 18),
        ),

        Text(
          formatCount(followerCount),
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 15),

        ElevatedButton(
          onPressed: () {
            setState(() {
              followerCount += 1000;
            });
          },
          child: const Text('Add 1,000 Followers'),
        ),
      ],
    );
  }
}
