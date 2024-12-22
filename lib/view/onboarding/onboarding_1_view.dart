import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_text_style.dart';
import 'package:test_course/core/widgets/custom_button_widget.dart';
import 'package:test_course/core/widgets/custom_text_form_field_widget.dart';
import 'package:test_course/view/onboarding/onboarding_2_view.dart';

class Onboarding1View extends StatefulWidget {
  const Onboarding1View({super.key});

  @override
  State<Onboarding1View> createState() => _Onboarding1ViewState();
}

bool isPassword = true;

class _Onboarding1ViewState extends State<Onboarding1View> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Stack(
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
                  left: 10.w,
                  top: 100.h,
                  child: Image.asset(
                    color: Colors.white.withValues(alpha: 0.4),
                    colorBlendMode: BlendMode.dstIn,
                    'assets/images/Group v1.png',
                    width: 353.w,
                    height: 295.h,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 65.w,
                  top: 110.h,
                  child: Image.asset(
                    'assets/images/spash_1.png',
                    width: 245.w,
                    height: 285.h,
                    fit: BoxFit.contain,
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
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 405.h,
                      ),
                      Text('Enter your mobile number',
                          style: AppTextStyle.medium20(AppColors.blackText)),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 325.w,
                        child: Text(
                            'We need to verify you. We will send you a one time verification code.',
                            style: AppTextStyle.regular14(
                                AppColors.blackText.withValues(alpha: 0.72))),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      CustomTextFormFieldWidget(
                        hintText: 'Email',
                        hintStyle: AppTextStyle.regular16(AppColors.blackText),
                        prefixIcon: const Icon(
                          Icons.call_outlined,
                          color: AppColors.blackText,
                        ),
                        height: 52.h,
                        width: 343.w,
                        color: AppColors.grayButton,
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 9.h,
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
                        height: 44.h,
                      ),
                      CustomButtonWidget(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Onboarding2View(),
                                ));
                          },
                          width: 343.w,
                          height: 48.h,
                          color: AppColors.greenButton,
                          text: 'Next',
                          textStyle: AppTextStyle.medium16(AppColors.whiteText),
                          radius: 8.r),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
