import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_text_style.dart';
import 'package:test_course/core/widgets/custom_button_widget.dart';
import 'package:test_course/core/widgets/custom_text_form_field_widget.dart';
import 'package:test_course/view/onboarding/onboarding_5_view.dart';

class Onboarding4View extends StatefulWidget {
  const Onboarding4View({super.key});

  @override
  State<Onboarding4View> createState() => _Onboarding4ViewState();
}

class _Onboarding4ViewState extends State<Onboarding4View> {
  TextEditingController fullNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
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
                    gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withValues(alpha: 0.55),
                    Colors.white30,
                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_back),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        'Your Information',
                        style: AppTextStyle.simiBold20(AppColors.blackText),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 325.w,
                    child: Text(
                        'It looks like you don’t have account in this number. Please let us know some information for a scure service',
                        style: AppTextStyle.regular14(
                            AppColors.blackText.withValues(alpha: 0.72))),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.blackText.withValues(alpha: 0.14),
                      borderRadius: BorderRadius.circular(138),
                    ),
                    width: 138.r,
                    height: 138.r,
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      color: AppColors.blackText,
                      size: 78.r,
                    ),
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  CustomButtonWidget(
                      widget: Image.asset(
                        'assets/images/facebook_icon.png',
                        width: 24.w,
                        height: 24.h,
                      ),
                      width: 343.w,
                      height: 48.h,
                      color: AppColors.blueButton,
                      text: 'Sync From Facebook',
                      textStyle: AppTextStyle.medium16(AppColors.whiteText),
                      radius: 8.r),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormFieldWidget(
                    hintText: 'Full Name',
                    hintStyle: AppTextStyle.regular16(AppColors.blackText),
                    prefixIcon: const Icon(
                      Icons.account_circle_outlined,
                      color: AppColors.blackText,
                    ),
                    height: 52.h,
                    width: 343.w,
                    color: AppColors.grayButton,
                    controller: fullNameController,
                  ),
                  SizedBox(
                    height: 224.h,
                  ),
                  CustomButtonWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Onboarding5View(),
                            ));
                      },
                      width: 343.w,
                      height: 48.h,
                      color: AppColors.greenButton,
                      text: 'Next',
                      textStyle: AppTextStyle.medium16(AppColors.whiteText),
                      radius: 8.r),
                ],
              ),
            ),
          ],
        ));
  }
}
