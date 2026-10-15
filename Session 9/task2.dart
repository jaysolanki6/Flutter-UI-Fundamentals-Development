
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String cuisine;
  final double rating;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.cuisine,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      elevation: 4,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.restaurant,
            color: Colors.white,
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(cuisine),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            const SizedBox(width: 4),
            Text(rating.toString()),
          ],
        ),
      ),
    );
  }
}
