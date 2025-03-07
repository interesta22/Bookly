import 'package:flutter/material.dart';
import 'package:bookly_app/features/splash/presentation/view%20models/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}