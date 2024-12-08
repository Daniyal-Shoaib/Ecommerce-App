//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class TransparentElevatedBtn extends StatelessWidget {
  const TransparentElevatedBtn({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(
          
          side: const BorderSide(
            width: 1,
            color: AppColors.whiteColor,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
       backgroundColor: Colors.transparent
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: "MetroPolies",
            color: Colors.white.withOpacity(.85), // Keep text color
          ),
        ),
      ),
    );
  }
}
