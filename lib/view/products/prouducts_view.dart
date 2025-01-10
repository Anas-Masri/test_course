import 'package:flutter/material.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_font_size.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_course/view/products/details.dart';

class ProuductsView extends StatefulWidget {
  const ProuductsView({super.key});

  @override
  State<ProuductsView> createState() => _ProuductsViewState();
}

class _ProuductsViewState extends State<ProuductsView> {
  List Snacks = [
    {
      "image": "assets/images/Rectangle 1.png",
      "title1": "Radhuni Shemai-200 gm -4-2-15-VD-SQ",
      "title2": "৳60"
    },
    {
      "image": "assets/images/Rectangle 2.png",
      "title1": "Cheese Puffs Chips-22 gm",
      "title2": "৳700"
    },
    {
      "image": "assets/images/Rectangle 3.png",
      "title1": "Nescafe Classic Coffee  Jar - 50gm",
      "title2": "৳25"
    },
    {
      "image": "assets/images/Rectangle 4.png",
      "title1": "Akher Chini (Deshi Suger) - 1kg",
      "title2": "৳30"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 10000,
            width: 1000,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/top_shape.png"))),
            child: Stack(children: [
              const SizedBox(height: 47),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        //Back
                      },
                      icon: Icon(Icons.arrow_back_sharp)),
                  Positioned(
                    height: 47,
                    bottom: 43,
                    right: 243,
                    left: 58,
                    child: Text("Snacks",
                        style: AppFontSize.simiBold20(
                          AppColors.blackText1,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 43,
              ),
              Positioned(
                right: 13,
                // top: 43,
                left: 13,
                bottom: 43,

                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 300,
                      crossAxisSpacing: 17,
                      mainAxisSpacing: 25),
                  itemCount: Snacks.length,
                  itemBuilder: (context, i) {
                    return SizedBox(
                        height: 293,
                        width: 164,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 135,
                                  width: 164,
                                  decoration: const BoxDecoration(
                                      color: AppColors.graycontainer,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9))),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(9)),
                                      child: InkWell(
                                        onTap: () {
                                          if (Snacks[i]["image"] ==
                                              "assets/images/Rectangle 1.png") {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Details()));
                                          }
                                          ;
                                        },
                                        child: Image.asset(
                                          Snacks[i]["image"],
                                        ),
                                      ))),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 12)),
                              Text(Snacks[i]["title1"],
                                  style: AppFontSize.regular14(
                                    AppColors.blackBoldText,
                                  )),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 33)),
                              Text(
                                Snacks[i]["title2"],
                                style: AppFontSize.medium16(
                                  AppColors.redButton,
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(bottom: 12)),
                              Expanded(
                                child: Container(
                                  height: 35,
                                  width: 164,
                                  decoration: const BoxDecoration(
                                      color: AppColors.greenButton,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(7))),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Positioned(
                                          right: 20,
                                          left: 3,
                                          top: 2,
                                          bottom: 2,
                                          child: SvgPicture.asset(
                                              "assets/images/Vector.svg"),
                                        ),
                                        const Padding(
                                            padding:
                                                EdgeInsets.only(right: 20)),
                                        Text("Add To Bag",
                                            style: AppFontSize.medium12(
                                              AppColors.grayButton,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]));
                  },
                ),
              ),
            ])));
  }
}
