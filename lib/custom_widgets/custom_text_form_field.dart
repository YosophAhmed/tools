import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final IconData? suffix;
  final IconData? prefix;
  final bool? obscure;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final void Function()? suffixFunction;

  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.obscure = false,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.suffix,
    this.prefix,
    this.suffixFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscure!,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: (data) {
        if(data!.isEmpty){
          return 'field is required!';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.cyanAccent,
          ),
          borderRadius: BorderRadius.circular(8.sp),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.cyanAccent,
          ),
          borderRadius: BorderRadius.circular(8.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.cyanAccent,
          ),
          borderRadius: BorderRadius.circular(8.sp),
        ),
        prefixIcon: Icon(
          prefix,
          color: Colors.cyanAccent,
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