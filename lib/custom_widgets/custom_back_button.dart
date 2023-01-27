import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Function() onPressed;

  const CustomBackButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.cyanAccent,
      child: Center(
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 30,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}