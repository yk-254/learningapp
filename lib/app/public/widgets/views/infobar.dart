
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learningapp/app/public/theme/pubtheme.dart';

class InfoBar extends StatelessWidget {
  final InfoBarCustom? infoBarCustom;
  final InfoBarSingle? infoBarSingle;
  final InfoBarDouble? infoBarDouble;
  const InfoBar(
      {super.key, this.infoBarCustom, this.infoBarSingle, this.infoBarDouble});

  @override
  Widget build(BuildContext context) {
    if (infoBarCustom != null) {
      return infoBarCustom!;
    } else if (infoBarSingle != null) {
      return infoBarSingle!;
    } else {
      return infoBarDouble!;
    }
  }
}

class InfoBarCustom extends StatelessWidget {
  final Widget child;
  final double? height;
  final Color? color;
  const InfoBarCustom(
      {super.key, required this.child, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return infoContainer(
      child: child,
      color: color,
      height: height,
    );
  }
}

class InfoBarDouble extends StatelessWidget {
  final Widget? titleIcon;
  final Widget? valueIcon;
  final Color? color;
  final Color? textTitleColor;
  final Color? textValueColor;
  final String title;
  final String value;
  InfoBarDouble(
      {this.titleIcon,
      this.valueIcon,
      this.color,
      this.textTitleColor,
      this.textValueColor,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return infoContainer(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (titleIcon != null) titleIcon!,
                Text(
                  title,
                  style: TextStyle(
                      color: textTitleColor ?? Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold).apply(fontWeightDelta: -1),
                )
              ],
            ),
            Row(
              children: [
                if (valueIcon != null) valueIcon!,
                Text(
                  value,
                  style: TextStyle(
                    color: textValueColor ?? Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        color: color);
  }
}

class InfoBarSingle extends StatelessWidget {
  final Widget? titleIcon;
  final Widget? valueIcon;
  final Color? titleCardcolor;
  final Color? valueCardcolor;
  final Color? textTitleColor;
  final Color? textValueColor;
  final String title;
  final String value;
  InfoBarSingle(
      {this.titleIcon,
      this.valueIcon,
      this.titleCardcolor,
      this.valueCardcolor,
      this.textTitleColor,
      this.textValueColor,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        infoContainer(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (titleIcon != null) titleIcon!,
                Text(
                  title,
                  style: TextStyle(
                      color: textTitleColor ?? Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold).apply(fontWeightDelta: -1),
                )
              ],
            ),
            color: titleCardcolor),
        SizedBox(height: 5),
        infoContainer(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (valueIcon != null) valueIcon!,
                Text(
                  value,
                  style: TextStyle(
                    color: textValueColor ?? Colors.white,
                  ),
                ),
              ],
            ),
            color: valueCardcolor),
      ],
    );
  }
}

Widget infoContainer({Color? color, required Widget child, double? height}) {
  var colors = color ?? theme.primaryColor;
  return Container(
    height: height,
    width: Get.width,
    margin: EdgeInsets.symmetric(
      horizontal: 10,
    ),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: colors,
      borderRadius: BorderRadius.circular(10),
    ),
    child: child,
  );
}
