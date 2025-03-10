import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimaton;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('lib/core/assets/images/Logonetflix 1.png'),
        SizedBox(height: 10),
        SlideTransition(
          position: slidingAnimaton,
          child: Text(
            'All books here',
            style: TextStyle(color: Colors.red, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fade,
        duration: Duration(milliseconds: 50),
      );
    });
  }
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimaton = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
}
