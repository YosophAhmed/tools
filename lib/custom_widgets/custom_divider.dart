import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  const CustomDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            thickness: 2.0,
            color: Colors.grey,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 2.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}