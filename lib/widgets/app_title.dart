import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/colors.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    Key? key,
    required this.fontSize,
  }) : super(key: key);
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: fontSize.sp,
            ),
        children: [
          _buildTextSpan(
            text: "Goo",
            color: AppColors.red,
          ),
          _buildTextSpan(
            text: "d",
            color: AppColors.yellow,
          ),
          _buildTextSpan(
            text: "l",
            color: AppColors.greenLight,
          ),
          _buildTextSpan(
            text: "e",
            color: AppColors.blue,
          ),
        ],
      ),
    );
  }

  TextSpan _buildTextSpan({
    required String text,
    required Color color,
  }) {
    return TextSpan(
      text: text,
      style: TextStyle(color: color),
    );
  }
}
