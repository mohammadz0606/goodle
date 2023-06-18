import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/colors.dart';

class HowItsWorkScreen extends StatelessWidget {
  static const String route = "how_its_work_screen";

  const HowItsWorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.only(
          top: 26.h,
          left: 16.w,
          right: 5.w,
          bottom: 15.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildText(
              context,
              text:
                  "It’s easy to use all you need to do\nis when you want to talk about\nany think we are here to listen",
            ),
            _buildSizedBox(),
            _buildText(
              context,
              text:
                  "lets say that you have a bad day\nand you want to talk about it\nbut you don’t want to anyone\nto know about it",
            ),
            _buildSizedBox(),
            _buildText(
              context,
              text:
                  "We are here for you, you cloud\nsay every think and we wont tell\nany one about it.",
            ),
            _buildSizedBox(),
            _buildText(
              context,
              text:
                  "Or you have a good day and you\nwant to share that’s with some\none but you don’t have anyone\nwe are here for you.",
            ),
            _buildSizedBox(),
            _buildText(
              context,
              text:
                  "We are happy to help you, to here\nyou, to stand with you\nin any moment.",
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildSizedBox() => SizedBox(height: 28.h);

  Text _buildText(
    BuildContext context, {
    required String text,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 15.sp,
          ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "How it’s work",
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 22.sp,
              color: AppColors.red,
            ),
      ),
      leading: IconButton(
        color: AppColors.red,
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
