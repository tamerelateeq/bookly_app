import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/presentation/Views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';

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
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    slidingAnimation = Tween(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
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
        Sliding_text(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
