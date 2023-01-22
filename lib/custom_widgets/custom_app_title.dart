import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppTitle extends StatelessWidget {
  final String title;

  const CustomAppTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 38.sp,
          fontWeight: FontWeight.bold,
          color: Colors.white54,
        ),
      ),
    );
  }
}
