
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FollowerScreen(),
  ));
}

class FollowerScreen extends StatelessWidget {
  const FollowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FollowerCountWidget(),
      ),
    );
  }
}

class FollowerCountWidget extends StatefulWidget {
  const FollowerCountWidget({super.key});

  @override
  State<FollowerCountWidget> createState() =>
      _FollowerCountWidgetState();
}

class _FollowerCountWidgetState
    extends State<FollowerCountWidget> {
  int followerCount = 9200;
  bool milestoneReached = false;

  String formatCount(int count) {
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }
    return count.toString();
  }

  void addFollowers() {
    setState(() {
      followerCount += 1000;
    });

    if (followerCount >= 10000 && !milestoneReached) {
      milestoneReached = true;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Milestone reached!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3),
        ),
      );
    }
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
          onPressed: addFollowers,
          child: const Text('Add 1,000 Followers'),
        ),
      ],
    );
  }
}
