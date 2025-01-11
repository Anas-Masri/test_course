import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_constants.dart';
import 'package:test_course/core/constants/app_text_style.dart';
import 'package:test_course/core/widgets/custom_text_form_field_widget.dart';
import 'package:test_course/core/widgets/grid_view_item_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int indexsellect = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.graybackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
            elevation: 25,
            backgroundColor: AppColors.white,
            currentIndex: indexsellect,
            onTap: (value) {
              indexsellect = value;
              setState(() {});
            },
            selectedItemColor: AppColors.white,
            iconSize: 24,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                activeIcon: Container(
                  height: 54.r,
                  width: 54.r,
                  decoration: BoxDecoration(
                      color: AppColors.greenButton,
                      borderRadius: BorderRadius.circular(54.r)),
                  child: const Icon(
                    Icons.home_outlined,
                  ),
                ),
                icon: const Icon(
                  Icons.home_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                  height: 54.r,
                  width: 54.r,
                  decoration: BoxDecoration(
                      color: AppColors.greenButton,
                      borderRadius: BorderRadius.circular(54.r)),
                  child: const Icon(
                    Icons.category_outlined,
                  ),
                ),
                icon: const Icon(
                  Icons.category_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                  height: 54.r,
                  width: 54.r,
                  decoration: BoxDecoration(
                      color: AppColors.greenButton,
                      borderRadius: BorderRadius.circular(54.r)),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Container(
                  height: 54.r,
                  width: 54.r,
                  decoration: BoxDecoration(
                      color: AppColors.greenButton,
                      borderRadius: BorderRadius.circular(54.r)),
                  child: const Icon(
                    Icons.menu,
                  ),
                ),
                icon: const Icon(
                  Icons.menu,
                ),
                label: '',
              ),
            ]),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0.h,
              child: Image.asset(
                'assets/images/top_shape.png',
                width: 375.65.w,
                height: 200.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0.h,
              child: Container(
                width: 375.65.w,
                height: 200.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    AppColors.graybackgroundColor,
                    Colors.white12,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )),
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
                    height: 52.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.2,
                              mainAxisSpacing: 14,
                              crossAxisSpacing: 18),
                      itemCount: AppConstants.imageList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GridViewItemBuilder(
                            image: AppConstants.imageList[index],
                            categoryName: AppConstants.titleList[index]);
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
