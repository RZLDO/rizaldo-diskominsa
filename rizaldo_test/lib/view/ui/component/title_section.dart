import 'package:flutter/material.dart';
import 'package:rizaldo_test/theme/app_color.dart';
import 'package:rizaldo_test/theme/text_style.dart';

class TitleSection extends StatelessWidget {
  final String text;
  final double width;
  final Color? color;
  final double? fontsize;
  final VoidCallback? onTap;
  const TitleSection(
      {this.color,
      required this.width,
      required this.text,
      this.fontsize,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: ReusableTextStyle.titleSmallTextBold.copyWith(
                  color: color ?? AppColor.blackColor,
                  fontSize: fontsize ?? 12),
            ),
            Container(
              height: 3,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: color ?? AppColor.blackColor),
            )
          ],
        ),
      ],
    );
  }
}
