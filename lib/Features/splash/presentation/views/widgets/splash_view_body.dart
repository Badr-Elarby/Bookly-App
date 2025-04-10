import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
/*************  ✨ Windsurf Command 🌟  *************/
  /// Initializes the state of the [SplashViewBody] widget.
  ///
  /// Here we create an [AnimationController] which is used to control the
  /// animation of the [SlidingText]. We also create a [Tween] that represents
  /// the animation of the [SlidingText].
  ///
  /// The animation starts from the top of the screen (Offset(0, 2)) and ends
  /// at the center of the screen (Offset(0, 0)). The animation is then started
  /// by calling [AnimationController.forward].
  @override
  void initState() {
    super.initState();

    /// The [AnimationController] is used to control the animation of the
    /// [SlidingText].
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
/*******  00863bcf-f1fb-4537-a83d-050c61a80994  *******/

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slideAnimation: slideAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    /// The [Tween] represents the animation of the [SlidingText].
    slideAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset(0, 0))
        .animate(animationController);

    /// Starts the animation of the [SlidingText].
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.fadeIn, duration: kTranstionDuration);
    });
  }
}
