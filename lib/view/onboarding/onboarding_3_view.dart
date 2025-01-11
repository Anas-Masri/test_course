import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_text_style.dart';
import 'package:test_course/core/widgets/custom_button_widget.dart';
import 'package:test_course/view/onboarding/onboarding_4_view.dart';

class Onboarding3View extends StatefulWidget {
  const Onboarding3View({super.key});

  @override
  State<Onboarding3View> createState() => _Onboarding3ViewState();
}

bool isPassword = true;

class _Onboarding3ViewState extends State<Onboarding3View> {
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: AppColors.grayButton,
        borderRadius: BorderRadius.circular(8),
      ),
    );
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 405.h,
                      ),
                      Text('Enter Verification Code',
                          style: AppTextStyle.medium20(AppColors.blackText)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('We have sent SMS to:',
                          style: AppTextStyle.regular14(
                              AppColors.blackText.withValues(alpha: 0.72))),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('01XXXXXXXXXX',
                          style: AppTextStyle.bold16(AppColors.blackText)),
                      SizedBox(
                        height: 28.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Pinput(
                          separatorBuilder: (index) => SizedBox(
                            width: 12.w,
                          ),
                          length: 5,
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: defaultPinTheme,
                          onCompleted: (pin) => debugPrint(pin),
                        ),
                      ),
                      SizedBox(
                        height: 31.h,
                      ),
                      Row(
                        children: [
                          Text('Resend OTP',
                              style:
                                  AppTextStyle.regular14(AppColors.orangeText)),
                          const Spacer(),
                          Text(
                            'Change Phone Number',
                            style: AppTextStyle.regular14(
                                AppColors.blackText.withValues(alpha: 0.72)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 49.h,
                      ),
                      CustomButtonWidget(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Onboarding4View(),
                                ));
                          },
                          width: 343.w,
                          height: 48.h,
                          color: AppColors.greenButton,
                          text: 'Next',
                          textStyle: AppTextStyle.medium16(AppColors.white),
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
