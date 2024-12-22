import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_text_style.dart';
import 'package:test_course/core/widgets/custom_text_form_field_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                  Colors.white.withValues(alpha: 0.55),
                  Colors.white54
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h),
                  child: Row(
                    children: [
                      Text(
                        'Grocery Plus',
                        style: AppTextStyle.simiBold20(AppColors.blackText),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.notifications_none,
                        size: 24.r,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  subtitle: Text(
                    '32 Llanberis Close, Tonteg, CF38 1HR',
                    style: AppTextStyle.medium14(AppColors.blackText),
                  ),
                  title: Text(
                    'Your Location',
                    style: AppTextStyle.regular11(AppColors.blackText),
                  ),
                  leading: Container(
                    width: 45.r,
                    height: 45.r,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: AppColors.greenColorLocation),
                    child: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomTextFormFieldWidget(
                    hintText: 'Search Anything',
                    hintStyle: AppTextStyle.regular16(
                        AppColors.blackText.withValues(alpha: 0.72)),
                    prefixIcon: const Icon(Icons.search),
                    controller: TextEditingController(),
                    color: AppColors.grayButton,
                    width: 343.w,
                    height: 52.h)
              ],
            )
          ],
        ));
  }
}
