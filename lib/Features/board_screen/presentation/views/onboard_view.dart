import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furni_app/Features/board_screen/presentation/views/widget/board1_screen.dart';
import 'package:furni_app/Features/board_screen/presentation/views/widget/board2_screen.dart';
import 'package:furni_app/Features/board_screen/presentation/views/widget/board3_screen.dart';
import 'package:furni_app/constants.dart';
import 'package:furni_app/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        pageViewModelOne(),
        pageViewModelTwo(),
        pageViewModelThree(),

      ],
      onDone: () {
        // عند الانتهاء من الشاشات
        GoRouter.of(context).pushNamed(AppRouter.kHomeView);
      },
      onSkip: () {
        // عند تخطي المقدمة
        GoRouter.of(context).pushNamed(AppRouter.kHomeView);
      },
      showSkipButton: true,

      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: Size(22.0, 10.0),
        activeColor: Colors.blue,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
