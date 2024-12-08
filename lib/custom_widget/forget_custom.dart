import 'package:flutter/material.dart';
import '../helpers/app_colors.dart';

class ForgetCustom extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;

  // Constructor with optional color and fontSize parameters
  const ForgetCustom({
    super.key,
    required this.text,
    this.color, // Optional color parameter
    this.fontSize, // Optional fontSize parameter
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.blackColor, // Default to blackColor if color is null
        fontSize: fontSize ?? 12.0, // Default to 12.0 if fontSize is null
        fontFamily: 'MetroPolies',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
