import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double width;
  final double height;
  final double borderRadius;
  final bool isLoading;
  final Color color;
  final Color labelColor;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 10.0,
    this.isLoading = false,
    this.color = Colors.blue,
    this.labelColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: isLoading
            ? const CircularProgressIndicator(
          color: Colors.black,
        )
            : Text(
          label,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: labelColor,
          ),
        ),
      ),
    );
  }
}