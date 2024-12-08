import 'package:flutter/material.dart';

import '../helpers/app_colors.dart';
class TopHeaderWidget extends StatelessWidget {
  final String text;
  const TopHeaderWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.blackColor,
        fontSize: 25,
        fontFamily: 'MetroPolies',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
