import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/Features/splash/presentation/Views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    //method for animation
    initSlideAnimation();
    // navigation to Home
    navigationToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // add logo image
        Image.asset(
          AssetsData.logo,
        ),
        // add space bysize box
        const SizedBox(height: 4),
        // add slideing animation text
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

// this method for initial slide animation
  void initSlideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    slidingAnimation = Tween(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  // this method to navigate to Home View
  void navigationToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      // to push new screen
      GoRouter.of(context).push(AppRouter.kHomeview);

      // Get.to(
      //   transition: Transition.fadeIn,
      //   duration: kDurationTime,
      // );
    });
  }
}
