import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: FeaturedBookListView(),
          ),
          // Here you would typically include a list of best-selling books
          // For example, using a ListView.builder or similar widget
        ],
      ),
    );
  }
}
