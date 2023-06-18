import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodySliderGoodle extends StatelessWidget {
  const BodySliderGoodle({
    Key? key,
    required this.cardColor,
    required this.image,
  }) : super(key: key);
  final Color cardColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          color: cardColor,
        ),
        width: 250.w,
        child: SvgPicture.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
