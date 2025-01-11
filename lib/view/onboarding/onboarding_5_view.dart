import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_text_style.dart';
import 'package:test_course/core/widgets/custom_button_widget.dart';
import 'package:test_course/core/widgets/custom_text_form_field_widget.dart';
import 'package:test_course/view/home_view.dart';

class Onboarding5View extends StatefulWidget {
  const Onboarding5View({super.key});

  @override
  State<Onboarding5View> createState() => _Onboarding5ViewState();
}

bool isPassword = true;

class _Onboarding5ViewState extends State<Onboarding5View> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
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
                          'Choose a Password',
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
                          'For the security & safety please choose a password',
                          style: AppTextStyle.regular14(
                              AppColors.blackText.withValues(alpha: 0.72))),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          top: 70,
                          child: Image.asset(
                            colorBlendMode: BlendMode.dstIn,
                            color: Colors.white.withValues(alpha: 0.4),
                            'assets/images/shape_3.png',
                            width: 256.w,
                            height: 240.h,
                          ),
                        ),
                        Image.asset(
                          'assets/images/Group v3.png',
                          width: 263.w,
                          height: 343.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    CustomTextFormFieldWidget(
                      isPassword: isPassword,
                      suffixIcon: InkWell(
                          onTap: () {
                            isPassword = !isPassword;
                            setState(() {});
                          },
                          child: isPassword
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined)),
                      hintText: 'Password',
                      hintStyle: AppTextStyle.regular16(
                          AppColors.blackText.withValues(alpha: 0.72)),
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: AppColors.blackText,
                      ),
                      height: 52.h,
                      width: 343.w,
                      color: AppColors.grayButton,
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    CustomTextFormFieldWidget(
                      isPassword: isPassword,
                      suffixIcon: InkWell(
                          onTap: () {
                            isPassword = !isPassword;
                            setState(() {});
                          },
                          child: isPassword
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined)),
                      hintText: 'Confirm Password',
                      hintStyle: AppTextStyle.regular16(
                          AppColors.blackText.withValues(alpha: 0.72)),
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: AppColors.blackText,
                      ),
                      height: 52.h,
                      width: 343.w,
                      color: AppColors.grayButton,
                      controller: confirmPasswordController,
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    CustomButtonWidget(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeView(),
                              ));
                        },
                        width: 343.w,
                        height: 48.h,
                        color: AppColors.greenButton,
                        text: 'Finish, Good to go',
                        textStyle: AppTextStyle.medium16(AppColors.white),
                        radius: 8.r),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
