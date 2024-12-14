import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_font_size.dart';
import 'package:test_course/core/widgets/custom_button_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButtonWidget(
                radius: 8.r,
                textStyle: AppFontSize.medium16(AppColors.whiteText),
                width: 343.w,
                height: 48.h,
                color: AppColors.greenButton,
                text: 'Next'),
          ),
        ],
      ),
    );
  }
}
