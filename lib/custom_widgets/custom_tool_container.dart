import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomToolContainer extends StatelessWidget {
  final String title;
  final String imageName;
  final VoidCallback onTap;

  const CustomToolContainer({
    Key? key,
    required this.title,
    required this.imageName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(22.sp),
                topLeft: Radius.circular(22.sp),
              ),
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
          ),
          Container(
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(22.sp),
                bottomLeft: Radius.circular(22.sp),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/$imageName'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
