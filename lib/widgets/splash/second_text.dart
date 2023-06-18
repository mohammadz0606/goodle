import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/colors.dart';


class SecondText extends StatelessWidget {
  const SecondText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "We are Friends!",
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: AppColors.greenLight.withOpacity(0.8),
        fontSize: 38.5.sp,
      ),
    );
  }
}
