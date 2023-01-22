import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tools/custom_widgets/custom_app_title.dart';

class CustomToolContainer extends StatelessWidget {
  final String title;
  final String imageName;

  const CustomToolContainer({
    Key? key,
    required this.title,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomAppTitle(
          title: title,
        ),

        Container(
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.sp),
            image: DecorationImage(
              image: AssetImage(imageName),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
