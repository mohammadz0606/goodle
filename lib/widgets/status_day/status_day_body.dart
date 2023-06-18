import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../helper/colors.dart';
import 'custom_text_field.dart';

class StatusDayBody extends StatelessWidget {
  const StatusDayBody({
    Key? key,
    required this.color,
    required this.title,
    required this.image,
  }) : super(key: key);
  final Color color;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 5.h),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColors.black,
                      fontSize: 36.sp,
                    ),
              ),
              SizedBox(height: 5.h),
              Hero(
                tag: image,
                child: SizedBox(
                  height: 205.h,
                  child: SvgPicture.asset(
                    image,
                    //fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Row(
                    children: [
                      const Expanded(
                        child: CustomTextField(),
                      ),
                      SizedBox(width: 9.w),
                      FloatingActionButton(
                        backgroundColor: AppColors.white,
                        child: Icon(
                          FontAwesomeIcons.paperPlane,
                          color: color,
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          _showPopup(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white.withOpacity(0.77),
          content: Container(
            height: 290,
            width: 354,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Update your feeling",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 30.sp,
                        color: AppColors.orange,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                IconButton(
                  color: AppColors.orange,
                  icon: const Icon(
                    FontAwesomeIcons.rotateRight,
                    size: 33,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
