import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/colors.dart';


class Headers extends StatelessWidget {
  const Headers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hey",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppColors.red,
            fontSize: 30.sp,
          ),
        ),
        SizedBox(height: 5.sp),
        Text(
          "How was your Day ?",
         style: Theme.of(context).textTheme.titleLarge!.copyWith(
           color: AppColors.greenLight.withOpacity(0.8),
           fontSize: 30.sp,
         ),
        ),
      ],
    );
  }
}
