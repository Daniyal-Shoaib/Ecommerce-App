import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

  const TextFieldWidget({
    super.key,
    this.labelText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(.15),
            offset: const Offset(0, 2),
            spreadRadius: 0,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: AppColors.darkGrey,
          fontWeight: FontWeight.w500,
          fontFamily: 'MetroPolies',
          fontSize: 15,
        ),
        cursorColor: AppColors.blackColor,
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: AppColors.whiteColor,
          suffixIcon: suffixIcon,
          labelStyle: const TextStyle(
            fontFamily: 'MetroPolies',
            color: AppColors.darkGrey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        ),
      ),
    );
  }
}
