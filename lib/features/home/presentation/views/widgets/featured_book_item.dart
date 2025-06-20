import 'package:flutter/material.dart';

class FeaturedBookListItem extends StatelessWidget {
  const FeaturedBookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amberAccent,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('lib/core/assets/images/content.jpeg'),
          ),
        ),
      ),
    );
  }
}