import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_text_style.dart';
import 'package:test_course/view/onboarding/onboarding_1_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(
              builder: (context) => const Onboarding1View(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0.h,
              child: Image.asset(
                'assets/images/top_shape.png',
                width: 375.65.w,
                height: 211.2.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0.h,
              child: Container(
                width: 375.65.w,
                height: 211.2.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.white12],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ),
            ),
            Positioned(
              left: 114.w,
              top: 254.h,
              bottom: 418.h,
              right: 121.w,
              child: Image.asset(
                'assets/images/splash_0.png',
                width: 140.w,
                height: 140.h,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 415.h,
              left: 110.w,
              child: Text(
                'Grocery Plus',
                style: AppTextStyle.medium25(AppColors.blackText),
              ),
            ),
            Positioned(
              bottom: 0.h,
              child: Image.asset(
                'assets/images/bottom_shape.png',
                width: 375.w,
                height: 274.6.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0.h,
              child: Container(
                width: 375.w,
                height: 274.6.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.white.withValues(alpha: 0.55),
                  Colors.white30,
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
              ),
            ),
          ],
        ));
  }
}
