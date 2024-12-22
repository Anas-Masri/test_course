import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.text,
      required this.textStyle,
      required this.radius,
      this.onTap,
      this.widget = const Icon(
        Icons.arrow_forward,
        color: AppColors.whiteText,
      )});
  final double width;
  final double height;
  final double radius;
  final Color color;
  final String text;
  final TextStyle textStyle;
  final void Function()? onTap;
  // final IconData? icon;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius)),
        child: Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            const Spacer(),
            Text(
              text,
              style: textStyle,
            ),
            const Spacer(),
            widget,
            SizedBox(
              width: 20.w,
            )
          ],
        ),
      ),
    );
  }
}
