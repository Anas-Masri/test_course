import 'package:flutter/material.dart';
import 'package:test_course/core/constants/app_colors.dart';
import 'package:test_course/core/constants/app_font_size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "product Details",
            style: AppFontSize.simiBold20(AppColors.blackText1),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Stack(
            children: [
              ListView(
                children: [
                  const SizedBox(
                    height: 33.68,
                  ),
                  Positioned(
                      top: 114,
                      left: 300,
                      bottom: 974,
                      right: 0,
                      child: Image.asset(
                        "assets/images/Rectangle 1 (1).png",
                        height: 308,
                        width: 294,
                      )),
                  const SizedBox(
                    height: 36,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Rectangle 32 (1).png",
                          height: 66,
                          width: 66,
                        ),
                        const Padding(padding: EdgeInsets.only(right: 26)),
                        Image.asset(
                          "assets/images/Rectangle 33.png",
                          height: 66,
                          width: 66,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    "Arla DANo Full Cream Milk Powder Instant",
                    style: AppFontSize.medium20(AppColors.blackText1),
                  ),
                  const SizedBox(height: 16),
                  Row(children: [
                    Text(
                      "1 KG",
                      style: AppFontSize.bold29(AppColors.blackText1),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    Text("৳182",
                        style: AppFontSize.bold29(
                          AppColors.greenButton,
                        )),
                  ]),
                  const SizedBox(height: 24),
                  const Row(
                    children: [
                      Icon(Icons.filter_list),
                      Text("   Dairy Prouducts"),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.list_rounded),
                      Expanded(
                          child: Text(
                              "   Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id",
                              maxLines: 4,
                              textAlign: TextAlign.start,
                              style: AppFontSize.medium16(
                                AppColors.blackText1,
                              ))),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text("You can also check this items",
                      style: AppFontSize.medium16(
                        AppColors.blackText1,
                      )),
                  const SizedBox(
                    height: 189,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/Rectangle 32 (1).png",
                        height: 121,
                        width: 115,
                      )),
                      const SizedBox(
                        width: 17,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nestle Nido Full Cream Milk Powder Instant",
                              maxLines: 2,
                              style: AppFontSize.medium12(AppColors.blackText1),
                            ),
                            Text(
                              "৳342",
                              style: AppFontSize.medium16(AppColors.blackText1),
                            ),
                            Text(
                              "৳270",
                              style: AppFontSize.medium16(AppColors.redButton),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Positioned(
                    //right: 17,
                    //left: 16,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          //height: 48,
                          //width: 343,
                          decoration: const BoxDecoration(
                            color: AppColors.greenButton,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "Add to bag",
                                  style: AppFontSize.medium16(
                                      AppColors.grayButton),
                                ),
                                const SizedBox(
                                  width: 94,
                                ),
                                SvgPicture.asset("assets/images/Vector.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
