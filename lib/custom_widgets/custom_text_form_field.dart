import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String hintText;
  final bool obscure;

  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final void Function(String?)? onSaved;

  final IconData? suffix;
  final IconData? prefix;
  final void Function()? suffixFunction;

  final Color color;
  final double borderRadius;
  final int maxLines;

  const CustomTextFormField({
    Key? key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscure = false,
    this.hintText = '',
    this.onChanged,
    this.onSubmitted,
    this.onSaved,
    this.prefix,
    this.suffix,
    this.suffixFunction,
    this.color = Colors.blue,
    this.borderRadius = 10.0,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscure,
      onChanged: onChanged,
      onSaved: onSaved,
      onFieldSubmitted: onSubmitted,
      cursorColor: color,
      maxLines: maxLines,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required!';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        prefixIcon: Icon(
          prefix,
          color: color,
        ),
        suffixIcon: IconButton(
          onPressed: suffixFunction,
          icon: Icon(suffix),
          // color: primaryColor4,
        ),
      ),
    );
  }
}