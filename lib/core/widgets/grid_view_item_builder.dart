import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_text_style.dart';

class GridViewItemBuilder extends StatelessWidget {
  const GridViewItemBuilder(
      {super.key, required this.image, required this.categoryName});
  final String image;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 160.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Image.asset(
            image,
            width: 95.w,
            height: 95.h,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            categoryName,
            style: AppTextStyle.medium13(AppColors.blackText),
          ),
          SizedBox(
            height: 11.h,
          )
        ],
      ),
    );
  }
}
