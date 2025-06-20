import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection:
          Axis.horizontal, // Example count, replace with actual data length
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: const FeaturedBookListItem(),
        );
      },
    );
  }
}