import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    required this.backgroundColor,
    required this.title,
    required this.textColor,
    this.heights,
    this.widths,
    this.radious,
    this.size,
    super.key,
  });
  Color backgroundColor;
  String title;
  Color textColor;
  double? heights;
  double? widths;
  double? radious;
  double? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: heights ?? 7.h,
      width: widths ?? 90.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radious ?? 10),
        // border: Border.all(color: textColor)
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: size ?? 19.sp),
        ),
      ),
    );
  }
}
