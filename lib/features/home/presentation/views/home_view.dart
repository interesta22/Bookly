import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/view%20models/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewBody());
  }
}
