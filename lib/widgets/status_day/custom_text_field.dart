import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      focusNode: _focusNode,
      textInputAction: TextInputAction.newline,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.white,
            fontSize: 15.5.sp,
          ),
      cursorColor: AppColors.white,
      decoration: InputDecoration(
        hintText: "Tell how was your day ?",
        hintStyle:
        Theme.of(context).textTheme.titleLarge!.copyWith(
          color: AppColors.white.withOpacity(0.7),
          fontSize: 15.sp,
        ),
        enabled: true,
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _buildOutlineInputBorder(),
        border: _buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.r),
      borderSide: BorderSide(
        width: 1.5,
        color: AppColors.white.withOpacity(0.7),
      ),
    );
  }
}
