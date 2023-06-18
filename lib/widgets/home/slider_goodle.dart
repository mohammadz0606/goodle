import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/colors.dart';
import '../../screens/status_day.dart';
import 'body_slider_goodle.dart';

class SliderGoodle extends StatefulWidget {
  const SliderGoodle({Key? key}) : super(key: key);

  @override
  State<SliderGoodle> createState() => _SliderGoodleState();
}

class _SliderGoodleState extends State<SliderGoodle>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;

  final List<Color> _colorsGoodle = [
    AppColors.yellow,
    AppColors.red,
    AppColors.greenLight,
    AppColors.blue
  ];

  final List<String> _textGoodle = [
    "Happy",
    "Angry",
    "Bored",
    "Sad",
  ];

  final List<String> _images = [
    "assets/images/happy NS.svg",
    "assets/images/anger NS.svg",
    "assets/images/bord NS.svg",
    "assets/images/Sad NS.svg",
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 85.5.h),
      child: PageView.builder(
        itemCount: _colorsGoodle.length,
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                StatusDayScreen.route,
                arguments: {
                  "colorBackground": _colorsGoodle[index],
                  "title": _textGoodle[index],
                  "image": _images[index],
                },
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: Hero(
                tag: _images[index],
                child: Column(
                  children: [
                    Expanded(
                      flex: 27,
                      child: BodySliderGoodle(
                        image: _images[index],
                        cardColor: _colorsGoodle[index],
                      ),
                    ),
                    SizedBox(height: 19.h),
                    Expanded(
                      flex: 7,
                      child: Text(
                        _textGoodle[index],
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 30.sp,
                          color: AppColors.black,
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
