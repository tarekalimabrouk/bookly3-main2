import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/Sliding_Text.dart';
import 'package:bookly/features/home/data/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimtion;
  late AnimationController animatedContainer;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();
  }

 

  @override
  void dispose() {
    super.dispose();
    animatedContainer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          Assets.logo,
          height: 50,
        ),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimtion: slidingAnimtion),
      ],
    );
  }

  void initSlidingAnimation() {
    animatedContainer = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimtion = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animatedContainer);
    animatedContainer.forward();
  }

 void navigateToHome() {
     Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuation);
    });
  }

}
