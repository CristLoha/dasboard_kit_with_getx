import 'package:dasboard_kit_with_getx/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../shared/theme.dart';

class SideMenu extends GetView<HomeController> {
  final Function() onPress;
  final String title;
  final int selectColor;
  final String icon;

  const SideMenu({
    required this.onPress,
    required this.title,
    required this.selectColor,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        hoverColor: kgreyColor.withOpacity(0.10),
        onTap: onPress,
        child: Container(
          width: 256,
          height: 60,
          child: Row(
            children: [
              SizedBox(width: 2),
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    width: 3,
                    height: 60,
                    decoration: BoxDecoration(
                      color: controller.selected[selectColor]
                          ? kLightBlue
                          : kTransparentColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      icon,
                      color: controller.selected[selectColor]
                          ? kLightBlue
                          : kgreyColor,
                    ),
                    SizedBox(width: 25),
                    Text(
                      title,
                      style: lightTextStyle.copyWith(
                        fontSize: 16,
                        color: controller.selected[selectColor]
                            ? kLightBlue
                            : kgreyColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: controller.selected[selectColor]
                ? kgreyColor.withOpacity(0.10)
                : kTransparentColor,
          ),
        ),
      ),
    );
  }
}
